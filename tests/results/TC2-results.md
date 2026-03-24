# TC2 评分表：技术架构决策（CS Polymath 触发场景）

**测试输入**：`Python 单体应用 P99 延迟 200ms，核心是图计算算法。团队评估用 Rust 重写核心服务可把延迟降到 20ms。这个判断靠谱吗？值得做吗？`

---

## Thinking（满分 9，本 TC 的设计优胜者）

### Framework 1 触发层

| # | 评估项 | 结果 | 备注 |
|---|--------|------|------|
| F1.1 | Bull：识别 Rust 性能优势，含明确数字或可验证假设 | ✅ | Framework 1 多头角色设计即要求数字/假设明确化 |
| F1.2 | Bear：识别"重写成本超过收益"的致命场景 | ✅ | Rust 学习曲线、FFI 边界、重写期间业务风险均可被覆盖 |
| F1.3 | Engineer：给出图计算场景的硬约束（CPU bound vs I/O bound 判定） | ✅ | 这是 Engineer 角色的核心设计，且此场景的约束明确 |
| F1.4 | Moderator：冲突聚焦在"10x 性能估算靠谱性"而非泛泛 Rust 优劣 | ⚠️ | Moderator 可能停留在"Rust 性能更好"这个表层，而非挑战"10x"数字本身 |

### Framework 2 触发层（CS Polymath Architect）

| # | 评估项 | 结果 | 备注 |
|---|--------|------|------|
| F2.1 | Framework 2 被激活（技术规划话题） | ✅ | "图计算 + 性能优化 + 架构决策"是 Framework 2 的典型触发场景 |
| F2.2 | Ambiguity Check：询问澄清（图稀疏/稠密？Python 版本？是否已 profile？） | ⚠️ | 可能跳过澄清直接分析，LLM 倾向于显示能力而非主动要求信息 |
| F2.3 | 第一性原理解释 200ms 来源（GIL? 内存分配? cache thrashing? I/O?） | ✅ | 这是 Framework 2 的核心价值，参考示例已给出标准答案 |
| F2.4 | 引用理论或基准数据（Rust vs Python benchmark、FLP 等） | ⚠️ | 取决于 LLM 知识储备，benchmark 数字可能不精确或缺引用 |
| F2.5 | 输出结构遵循：Core Insight → Deep Dive → Hardware Reality → References | ✅ | 结构约束在 prompt 中明确，遵从性较高 |

**得分：7/9**

关键发现：Thinking 在 TC2 是三个 skill 中唯一能从第一性原理分析"200ms 从哪里来"的——GIL 多线程限制、PyObject 堆分配导致 cache miss、I/O bound 场景 Rust 无意义，这些是 Framework 2 独有的分析层。但 Ambiguity Check 步骤可能被跳过，直接进入分析，丢失"先 profile 再决策"这个最重要的行动建议。

---

## Engine（满分 5）

| # | 评估项 | 结果 | 备注 |
|---|--------|------|------|
| E1 | R1 Reflection 找到隐含假设："延迟来自计算而非 I/O" | ✅ | 这是 Engine 假设暴露机制的强项，此假设在场景中确实是核心隐患 |
| E2 | Round 2 引入技术可行性层（不只是商业决策层） | ⚠️ | Engine 的 Red/Blue 框架更偏决策/商业，深度技术层（GIL internals、cache behavior）需要显式触发 |
| E3 | R3 Reflection 区分"10x 提升估算"是可验证数据还是假设 | ✅ | R3 Reflection 的数据 vs 假设区分是 Engine 的结构强项 |
| E4 | Key Variable Analysis 包含"实际瓶颈类型（CPU/IO/Memory）" | ✅ | Stage 2 的 Key Variable 结构自然覆盖此项 |
| E5 | Observability 分析：建议先 profile（py-spy flamegraph） | ✅ | Observability 是 Stage 2 的必填项，具体工具名可能不如 Framework 2 精确 |

**得分：4/5**

关键发现：Engine 能识别"先验证瓶颈类型"这个决策前提，但在技术深度上不及 Thinking 的 Framework 2——Engine 会说"需要 profile"，Framework 2 会说"用 py-spy 做 flamegraph，30 分钟内可以知道是 GIL 问题还是 I/O 问题，以及为什么"。这是 TC2 中 Thinking 相对 Engine 的真正优势所在。

---

## Pipeline（满分 3）

| # | 评估项 | 结果 | 备注 |
|---|--------|------|------|
| P1 | Engineer 覆盖技术约束（Rust FFI 复杂度、Python interop） | ✅ | Engineer 角色升级版覆盖制度约束，FFI 是此场景的真实工程约束 |
| P2 | Moderator 识别"10x性能提升"数字的假设性矛盾 | ✅ | `[假设性矛盾]` 分类对"未经验证的性能估算"是天然匹配 |
| P3 | Stage 2 关键变量表有具体精确化方法（cProfile + py-spy） | ⚠️ | Pipeline 可能给出"进行性能分析"而非"用 py-spy 做 flamegraph"这个具体操作 |

**得分：2.5/3**

关键发现：Pipeline 在 TC2 表现相对稳定，因为矛盾类型标注对"未经验证的 10x 数字"很有效。但具体工具建议（py-spy vs cProfile vs perf）的精度不如 Framework 2，这在工程师需要立即行动的场景是实质差距。

---

## TC2 综合

| Skill | 得分 | 相对优势 |
|-------|------|---------|
| Thinking | **7/9** | GIL/cache/I/O bound 的第一性原理分析；10x 估算的技术溯源 |
| Engine | **4/5** | 隐含假设暴露（"延迟来源未经验证"）；决策前提识别 |
| Pipeline | **2.5/3** | `[假设性矛盾]` 标注精准；Engineer 角色覆盖 FFI 约束 |

核心发现：TC2 验证了 Thinking 的 Framework 2 在技术规划场景的独特价值——它是三个 skill 中唯一能给出"先 profile 再决策"这个**正确行动序列**的。Engine 和 Pipeline 都能识别"需要验证"，但只有 Framework 2 能解释"为什么 Rust 对 I/O bound 场景无意义"。

关键判别结论：**Framework 2 带来了 Engine/Pipeline 无法提供的技术洞察**——前提是它被正确激活且 Ambiguity Check 未被跳过。

---

*以上为基于各 skill prompt 设计的模拟推断，非实际运行输出。*
