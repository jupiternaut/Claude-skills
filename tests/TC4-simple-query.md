# TC4：简单事实查询（不应触发场景）

## 测试输入

```
CAP 定理是什么？它对分布式系统设计有什么影响？
```

---

## 为什么这个场景重要

这是 Engine anti-pattern #6 明确举例的场景：
> "What is the CAP theorem?" → Answer directly. Do not run pipeline.

Engine 的 pre-check 第一个分支：
```
├─ Well-established fact / simple query
│  → Answer directly. Do not run pipeline.
│    (e.g., "What is the CAP theorem?")
```

这个问题有标准答案（Brewer 2000，Consistency/Availability/Partition tolerance），
没有"genuine uncertainty"，不应该触发任何对抗分析。

---

## 通用期望输出（三个 skill 都应满足）

一个高质量的直接回答，包含：
- CAP 定理的精确定义（三选二）
- 典型案例（CP 系统：ZooKeeper；AP 系统：DynamoDB/Cassandra）
- 设计影响（网络分区期间的 trade-off 选择）
- 不超过需要的长度

---

## Engine 评估 Checklist

- [ ] **不运行对抗管道**（最关键）
- [ ] 直接给出高质量技术回答
- [ ] 回答中引用第一性原理（e.g., 网络分区是物理现实，不可避免）
- [ ] 没有"这是一个很好的问题，让我从多个角度分析..."的冗余引导

**总分：____/4**

---

## Thinking 评估 Checklist

- [ ] 在 plan mode 语境下，plan mode 的触发条件（"plan, analyze, evaluate"）
  可能与这个问题重叠 → 检验是否会错误地运行 Framework
- [ ] 如果误触发：Framework 2 (CS Polymath) 是否至少产生了有质量的技术输出
- [ ] 直接回答时：能否引用 Lamport's 相关工作或 Brewer 原论文

**注意**：Thinking 的 `description` 包含 "analyze"，可能对 "有什么影响" 这类
问题产生误触发。这是此测试的核心风险点。

**总分：____/3**

---

## Pipeline 评估 Checklist

- [ ] 识别这是事实性问题，不运行完整管道
- [ ] 直接给出高质量回答
- [ ] Engineer 视角（如激活）能否引用信息论约束（FLP impossibility 等）

**总分：____/3**

---

## 实测结果（填写区）

### Engine
- 行为（直接回答 / 运行管道）：
- 回答质量（0-5）：
- 关键发现：

### Thinking
- 行为（直接回答 / 误触发 Framework）：
- 如误触发：Framework 2 的输出是否仍有价值：
- 关键发现：

### Pipeline
- 行为（直接回答 / 运行管道）：
- 回答质量（0-5）：
- 关键发现：

---

## 关键判别问题

> **Thinking 的"自动触发"设计是否会在这个场景产生问题？**
>
> Thinking 的 description：
> "Use when the user enters plan mode or asks you to **analyze** or **evaluate** any topic"
>
> "CAP 定理对设计有什么影响" 可能被解读为 "evaluate the impact"，
> 从而触发 Framework。
>
> 如果 Thinking 在这里运行了 Bull/Bear/Engineer → 说明"自动触发"设计
> 在信息查询场景会产生不必要的认知负担，是设计上的 over-triggering 风险。

---

## 补充说明

这个测试不是要证明某个 skill "差"，而是要识别各 skill 的适用边界：

- Engine 的 pre-check 是显式的边界守卫
- Thinking 的边界由 LLM 自行判断（implicit boundary）
- Pipeline 无边界设计（用户自行选择何时使用）

在实际使用中，边界守卫的清晰度直接影响"是否会打扰用户"。
