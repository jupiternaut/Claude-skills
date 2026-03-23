# TC1：战略决策（中等复杂度）

## 测试输入

```
我们是一家 30 人的 SaaS 公司，月活 5 万，目前所有 AI 功能都调用 OpenAI API。
每月 API 费用约 $8,000，且在增长。是否应该放弃 OpenAI API，
转而自己部署开源 LLM（如 LLaMA 3 / Mistral）？
```

---

## 预期分析路径

这个问题表面上是"成本 vs 能力"，但真正的隐含假设藏在更深处：
- 表层：开源 LLM 便宜 vs OpenAI 效果好
- 第二层：30人团队是否具备运维 GPU 集群的能力（被双方都默认了但没说出来）
- 第三层：决策的不可逆性（迁移成本 + 迁移期间的业务风险才是真正的决定因素）
- 第四层：这是一个"数据主权"决策，不只是成本决策（如果用户数据上云有合规风险，则强制自托管）

---

## Engine 评估 Checklist

**Round 1（Definition Layer）**
- [ ] Red Team 明确列出假设（e.g., "THIS WORKS IF team has ≥2 ML infra engineers"）
- [ ] Blue Team 每条论点带 failure trigger（e.g., "FAILS WHEN migration exceeds 3 months"）
- [ ] Reflection Layer 找到 Red/Blue 共享但未检验的假设（预期：双方都默认了团队有运维能力）
- [ ] Reflection 输出"重新定义的问题"（不只是"要不要迁移"，而是"在什么条件下迁移合理"）

**Round 2（Mechanism Layer）**
- [ ] 输入确实来自 Round 1 Reflection，而非重新从头论述
- [ ] Red Team 论证"即使能力不足，也有 graceful degradation 路径"
- [ ] Blue Team 找到 cliff effect（e.g., "一旦 GPU 出故障，整个 AI 功能停摆"）
- [ ] Reflection 提取出 1-3 个 Key Variables，格式包含 Dispute type + Verification method

**Round 3（Decision Layer）**
- [ ] Red Team 计算 expected value（ROI 分析，不只是"开源便宜"）
- [ ] Blue Team 提出具体替代方案（e.g., "用 AWS Bedrock 中间层降低 vendor lock-in"，而非只是"别做"）
- [ ] Reflection 明确区分"哪些分歧可以用数据解决"vs"哪些是价值判断"

**Stage 2**
- [ ] 每个 Key Variable 有 Observability + Controllability 分析
- [ ] 场景分支用条件句（"当 X > Y 时"），而非"可能/也许"
- [ ] Final Verdict 包含 Verification Priorities（按 ROI 排序）

**总分：____/12**

---

## Pipeline 评估 Checklist

- [ ] Bull 论点附带隐含假设（explicit assumption）
- [ ] Bear 论点附带失败触发条件（trigger）
- [ ] Engineer 约束包含制度/信息约束（不只是物理约束）
- [ ] Moderator 正确标注矛盾类型：
  - [ ] "API成本 vs 自托管成本" → `[事实性矛盾]`（可量化验证）
  - [ ] "团队运维能力" → `[假设性矛盾]`（双方假设不同）
  - [ ] 如有价值判断（数据主权 vs 效率）→ `[价值性矛盾]`
- [ ] 如有定义模糊（"开源 LLM 效果"是指什么任务？）→ 标注 `[伪矛盾：定义歧义]`
- [ ] Stage 2 只基于矛盾清单，不重复 Bull/Bear 原始论点

**总分：____/7**

---

## Thinking 评估 Checklist

- [ ] Bull（多头视角）3-5条，论据充分
- [ ] Bear（空头视角）3-5条，覆盖监管/黑天鹅等极端场景
- [ ] Engineer 给出物理/技术硬约束（GPU 内存需求、推理延迟 SLA 等）
- [ ] Moderator 找到真正的冲突点（非表面分歧）
- [ ] 输出格式符合 SKILL.md 模板（中文标签：多头视角/空头视角/工程师视角）

**总分：____/5**

---

## 实测结果（填写区）

### Engine
- 通过项：
- 未通过项：
- 关键发现：

### Pipeline
- 通过项：
- 未通过项：
- 关键发现：

### Thinking
- 通过项：
- 未通过项：
- 关键发现：

---

## 关键判别问题

> 在这个测试中，判断 Engine 是否真正"3轮递进"的核心问题是：
>
> **Round 2 的 Red/Blue 是否在论证 Round 1 Reflection 暴露的"运维能力假设"，
> 而不是在重复"开源便宜"这个表层论点？**
>
> 如果 Round 2 还在讨论成本 → Engine 没有真正递进，退化为 anti-pattern #1。
