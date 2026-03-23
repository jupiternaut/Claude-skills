# Skill 对比测试套件

## 被测对象

| 文件 | 简称 | 设计定位 |
|------|------|---------|
| `adversarial-engine.md` | **Engine** | 显式调用；3轮递进对抗 + 全程透明输出 |
| `adversarial-thinking/SKILL.md` | **Thinking** | Plan mode 自动触发；静默内化，结论 inform plan |
| `adversarial-thinking/adversarial-analytical-pipeline.md` | **Pipeline** | 中文模板驱动；单轮4角色 + 矛盾类型标注 |

---

## 关键写法差异速览

### 1. 触发机制
- **Engine**：用户显式请求（"分析"、"压力测试"、"stress-test"）+ pre-check 守门
- **Thinking**：plan mode 开始时自动激活（`description` 里写明 "Invoke automatically"）
- **Pipeline**：用户输入主题即触发，无守门逻辑

### 2. 推理架构
- **Engine**：3轮递进 — 每轮 Reflection 的输出成为下一轮 Red/Blue 的输入；Round 1（定义层）→ Round 2（机制层）→ Round 3（决策层）
- **Thinking / Pipeline**：单轮 Bull/Bear/Engineer/Moderator，无跨轮递进

### 3. 输出可见性
- **Engine**：强制全程展示（6条 mandatory display rules），"The derivation IS the product"
- **Thinking**：静默运行，"do not need to output all steps verbatim"
- **Pipeline**：完整模板输出，格式严格固定

### 4. 矛盾分类
- **Engine**：无显式分类，在 Round 3 Reflection 区分"数据可解决的分歧"vs"价值判断分歧"
- **Thinking**：无分类
- **Pipeline**：显式4分类：`[事实性矛盾]` / `[假设性矛盾]` / `[价值性矛盾]` / `[伪矛盾：定义歧义]`

### 5. 特色功能
- **Engine**：Anti-patterns 清单（6条）、Skill Interactions 上下游、Cognitive Reset Barrier
- **Thinking**：Framework 2 CS Polymath Architect（技术规划专用深度框架）
- **Pipeline**：Engineer 角色升级（覆盖制度约束 + 信息不对称）、中文 Unicode 模板

---

## 测试用例清单

| 文件 | 场景 | 核心考察点 | 预期优胜 |
|------|------|-----------|---------|
| [TC1](TC1-strategic.md) | 战略决策（中等复杂） | 3轮递进 vs 单轮；假设暴露深度 | Engine |
| [TC2](TC2-technical.md) | 技术架构决策 | CS Polymath 触发；硬件/编译器视角 | Thinking |
| [TC3](TC3-vague-input.md) | 模糊输入 | Pre-check 守门逻辑 | Engine |
| [TC4](TC4-simple-query.md) | 简单事实查询 | 不该触发时的克制 | Engine |
| [TC5](TC5-value-judgment.md) | 价值判断主导决策 | 矛盾类型识别；价值判断 vs 数据分歧 | Engine ≈ Pipeline |

---

## 评分标准（通用）

每个测试用例的 checklist 使用三档评分：
- ✅ 达到预期
- ⚠️ 部分达到
- ❌ 未达到

最终按 checklist 通过率计算得分（满分 = 该用例 checklist 项数）。

---

## 如何使用

1. 将对应 skill 文件内容作为 system prompt（或 custom instruction）
2. 输入测试用例中的"输入"字段
3. 对照 checklist 逐项评估输出
4. 在"实测结果"区域记录通过 / 未通过的具体原因

---

## 综合评估预判

```
场景适配建议：

Engine   → 需要深度、多轮分析的复杂决策；用户愿意阅读长输出
Thinking → 技术规划（需要 CS Polymath）；用户不想改变工作流，plan mode 下自动加持
Pipeline → 快速单轮分析；偏好中文结构化输出；需要矛盾类型标注

三个 skill 互补，而非竞争关系。
```
