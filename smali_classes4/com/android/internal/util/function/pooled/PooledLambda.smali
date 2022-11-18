.class public interface abstract Lcom/android/internal/util/function/pooled/PooledLambda;
.super Ljava/lang/Object;
.source "PooledLambda.java"


# direct methods
.method public static blacklist __()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    return-object v0
.end method

.method public static blacklist __(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    .line 128
    .local p0, "typeHint":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 761
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TB;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 801
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TC;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 841
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TD;>;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TD;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TD;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 881
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 571
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TB;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 609
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TC;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 647
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 330
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TB;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 444
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static blacklist obtainFunction(Lcom/android/internal/util/function/QuadFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TA;TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 781
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TB;TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 821
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TC;TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 861
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;TB;TC;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TD;>;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TD;TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TD;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 901
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TA;TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 590
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TB;TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 628
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TC;TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 666
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;+TR;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TA;TR;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;+TR;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 426
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;+TR;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TB;TR;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 480
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1469
    .local p0, "function":Lcom/android/internal/util/function/DecConsumer;, "Lcom/android/internal/util/function/DecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1470
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1473
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1474
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DodecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-T",
            "L;",
            ">;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;T",
            "L;",
            ")",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1684
    .local p0, "function":Lcom/android/internal/util/function/DodecConsumer;, "Lcom/android/internal/util/function/DodecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-TL;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    .local p12, "arg12":Ljava/lang/Object;, "TL;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1685
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1688
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1689
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HeptConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;TA;TB;TC;TD;TE;TF;TG;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1184
    .local p0, "function":Lcom/android/internal/util/function/HeptConsumer;, "Lcom/android/internal/util/function/HeptConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1185
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1188
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1189
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1097
    .local p0, "function":Lcom/android/internal/util/function/HexConsumer;, "Lcom/android/internal/util/function/HexConsumer<-TA;-TB;-TC;-TD;-TE;-TF;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1098
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1101
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1102
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/NonaConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1371
    .local p0, "function":Lcom/android/internal/util/function/NonaConsumer;, "Lcom/android/internal/util/function/NonaConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1372
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1375
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1376
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/OctConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1276
    .local p0, "function":Lcom/android/internal/util/function/OctConsumer;, "Lcom/android/internal/util/function/OctConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1277
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1280
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1281
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 934
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 938
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 939
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1014
    .local p0, "function":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1018
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1019
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 698
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 699
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 702
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 703
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/UndecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/UndecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1573
    .local p0, "function":Lcom/android/internal/util/function/UndecConsumer;, "Lcom/android/internal/util/function/UndecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1574
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1577
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1578
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 511
    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 515
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 516
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 255
    .local p0, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 259
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 260
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/QuadPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadPredicate<",
            "-TA;-TB;-TC;-TD;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadPredicate;, "Lcom/android/internal/util/function/QuadPredicate<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 387
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintPredicate<",
            "-TA;-TB;-TC;-TD;-TE;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuintPredicate;, "Lcom/android/internal/util/function/QuintPredicate<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 408
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriPredicate<",
            "-TA;-TB;-TC;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriPredicate;, "Lcom/android/internal/util/function/TriPredicate<-TA;-TB;-TC;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 367
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 348
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TB;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 462
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/DecConsumer;, "Lcom/android/internal/util/function/DecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    .line 1401
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DodecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-T",
            "L;",
            ">;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;T",
            "L;",
            ")",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/DodecConsumer;, "Lcom/android/internal/util/function/DodecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-TL;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    .local p12, "arg12":Ljava/lang/Object;, "TL;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    .line 1608
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HeptConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;TA;TB;TC;TD;TE;TF;TG;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/HeptConsumer;, "Lcom/android/internal/util/function/HeptConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1123
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/HexConsumer;, "Lcom/android/internal/util/function/HexConsumer<-TA;-TB;-TC;-TD;-TE;-TF;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1039
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/NonaConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/NonaConsumer;, "Lcom/android/internal/util/function/NonaConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 1305
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/OctConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/OctConsumer;, "Lcom/android/internal/util/function/OctConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 1212
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 721
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 958
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 533
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/UndecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/UndecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/UndecConsumer;, "Lcom/android/internal/util/function/UndecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    .line 1501
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 276
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 191
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainSupplier(D)Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 3
    .param p0, "value"    # D

    .line 174
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 175
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 176
    return-object v0
.end method

.method public static blacklist obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 3
    .param p0, "value"    # I

    .line 150
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 151
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    int-to-long v1, p0

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 152
    return-object v0
.end method

.method public static blacklist obtainSupplier(J)Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 1
    .param p0, "value"    # J

    .line 162
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 163
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    iput-wide p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 164
    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/DecFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DecFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;+TR;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/DecFunction;, "Lcom/android/internal/util/function/DecFunction<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    .line 1428
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/DodecFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DodecFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;+T",
            "L;",
            "+TR;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;T",
            "L;",
            ")",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/DodecFunction;, "Lcom/android/internal/util/function/DodecFunction<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;+TL;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    .local p12, "arg12":Ljava/lang/Object;, "TL;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    .line 1640
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/HeptFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HeptFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;+TR;>;TA;TB;TC;TD;TE;TF;TG;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/HeptFunction;, "Lcom/android/internal/util/function/HeptFunction<-TA;-TB;-TC;-TD;-TE;-TF;-TG;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1147
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/HexFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;+TR;>;TA;TB;TC;TD;TE;TF;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/HexFunction;, "Lcom/android/internal/util/function/HexFunction<-TA;-TB;-TC;-TD;-TE;-TF;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1061
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/NonaFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/NonaFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;+TR;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/NonaFunction;, "Lcom/android/internal/util/function/NonaFunction<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 1331
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/OctFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/OctFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;+TR;>;TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/OctFunction;, "Lcom/android/internal/util/function/OctFunction<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 1237
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 741
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/QuintFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintFunction<",
            "-TA;-TB;-TC;-TD;-TE;+TR;>;TA;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/QuintFunction;, "Lcom/android/internal/util/function/QuintFunction<-TA;-TB;-TC;-TD;-TE;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 979
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;TA;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 552
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Lcom/android/internal/util/function/UndecFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/UndecFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;+TR;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Lcom/android/internal/util/function/UndecFunction;, "Lcom/android/internal/util/function/UndecFunction<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    .line 1531
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 138
    .local p0, "value":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 139
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    iput-object p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 140
    return-object v0
.end method

.method public static blacklist obtainSupplier(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;+TR;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 312
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 294
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Ljava/util/function/Function;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TA;+TR;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TA;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 225
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static blacklist obtainSupplier(Ljava/util/function/Predicate;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TA;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .local p0, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 208
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist recycle()V
.end method

.method public abstract blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
.end method
