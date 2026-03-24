# TC1 评分表：战略决策

**测试输入**：`30 人 SaaS 公司，月活 5 万，月付 OpenAI API $8,000 且增长。是否应该转向自部署开源 LLM？`

---

## Engine（满分 12）

| # | 评估项 | 结果 | 备注 |
|---|--------|------|------|
| R1.1 | Red Team 列出运维能力假设（≥2 ML infra 工程师） | ✅ | Red Team 设计目标即挖掘隐含假设，此项明确 |
| R1.2 | Blue Team 每条论点含 failure trigger | ✅ | FAILS WHEN 格式已内置于 prompt 结构 |
| R1.3 | Reflection 找到双方共享但未检验的假设（运维能力） | ⚠️ | 需要跨视角元分析，有退化为表层总结的风险 |
| R1.4 | Reflection 输出重新定义的问题（"什么条件下迁移合理"） | ✅ | Reflection 的显式设计目标 |
| R2.1 | Round 2 输入来自 R1 Reflection，而非重头论述 | ⚠️ | Anti-pattern #1 高风险：LLM 可能在 R2 仍讨论成本而非运维假设 |
| R2.2 | Red Team 论证 graceful degradation 路径 | ✅ | 若 R2 正确递进则能触及此项 |
| R2.3 | Blue Team 找到 cliff effect（GPU 故障→AI 功能全停） | ✅ | 工程约束推导自然 |
| R2.4 | Reflection 提取 Key Variables，含 dispute type + verification method | ✅ | 结构化输出格式约束强制覆盖 |
| R3.1 | Red Team 计算 expected value（ROI，不只是"开源便宜"） | ✅ | R3 Decision Layer 的显式要求 |
| R3.2 | Blue Team 提出具体替代方案（如 AWS Bedrock 中间层） | ⚠️ | 可能给出通用替代而非具体方案，Bedrock 需要领域知识 |
| R3.3 | Reflection 区分"数据可解决分歧"vs"价值判断" | ✅ | R3 Reflection 的明确指令 |
| S2 | Stage 2：条件句场景分支 + Observability/Controllability + Verification Priorities | ✅ | Stage 2 结构约束覆盖三项 |

**得分：9/12**

关键发现：R2.1 是最高风险项——若 Round 2 仍在讨论成本而非运维能力假设，三轮递进结构退化为三次平行论述，Engine 的核心价值丧失。

---

## Pipeline（满分 7）

| # | 评估项 | 结果 | 备注 |
|---|--------|------|------|
| P1 | Bull 论点附 explicit assumption | ✅ | 格式要求明确，LLM 遵从性高 |
| P2 | Bear 论点附 failure trigger | ✅ | 同上 |
| P3 | Engineer 约束含制度/信息约束（不只是物理） | ⚠️ | 倾向于输出技术约束（GPU），制度约束（招聘市场、合规）覆盖率不稳定 |
| P4 | "API成本 vs 自托管成本" → `[事实性矛盾]` | ✅ | 可量化，Pipeline 在此类分类上表现稳定 |
| P5 | "团队运维能力" → `[假设性矛盾]` | ✅ | 假设性矛盾识别是 Pipeline 的设计优势 |
| P6 | 数据主权问题 → `[价值性矛盾]` | ⚠️ | 需要主动识别隐含的合规/主权维度，不一定被触发 |
| P7 | Stage 2 仅基于矛盾清单，不重复原始论点 | ✅ | Stage 2 的结构约束有效 |

**得分：5/7**

关键发现：数据主权维度（`[价值性矛盾]`）属于隐含问题，Pipeline 的单轮结构可能在用户没有明确提出时忽略它。这是 Pipeline vs Engine 的核心差异——Engine 的 R1 Reflection 有机制挖掘隐含维度。

---

## Thinking（满分 5）

| # | 评估项 | 结果 | 备注 |
|---|--------|------|------|
| T1 | Bull（多头）3-5 条，论据充分 | ✅ | 标准结构，稳定输出 |
| T2 | Bear（空头）覆盖监管/黑天鹅场景 | ✅ | Framework 1 会触发极端场景推演 |
| T3 | Engineer 给出硬约束（GPU 内存需求、推理延迟 SLA） | ✅ | 技术约束是 Framework 2/Engineer 角色的强项 |
| T4 | Moderator 找到真正冲突点（非"开源便宜"表层） | ⚠️ | Moderator 可能停留在"成本 vs 能力"而非"决策不可逆性" |
| T5 | 输出格式符合模板（中文标签） | ✅ | 格式约束强制执行 |

**得分：4/5**

关键发现：Thinking 的 Moderator 层不一定能挖掘"迁移不可逆性"和"数据主权"这两个第三、四层问题——这需要超出 Bull/Bear 框架的元分析能力。

---

## TC1 综合

| Skill | 得分 | 关键风险 |
|-------|------|---------|
| Engine | **9/12** | R2 是否真正递进（Anti-pattern #1） |
| Pipeline | **5/7** | 隐含维度（数据主权）的识别率 |
| Thinking | **4/5** | Moderator 层深度（表层 vs 机制层冲突） |

核心发现：TC1 是 Engine 设计价值最清晰的场景——"运维能力假设"这个隐含维度需要跨轮迭代才能浮现。但这也是 Engine 的最高风险点：若 LLM 在 R2 退化回成本论述，三轮结构变成成本浪费。

---

*以上为基于各 skill prompt 设计的模拟推断，非实际运行输出。*
