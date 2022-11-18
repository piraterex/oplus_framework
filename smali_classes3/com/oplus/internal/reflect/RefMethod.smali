.class public final Lcom/oplus/internal/reflect/RefMethod;
.super Lcom/oplus/internal/reflect/internal/BaseMethod;
.source "RefMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/internal/reflect/internal/BaseMethod;"
    }
.end annotation


# instance fields
.field private final blacklist mappingFieldName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p2, "mappingField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lcom/oplus/internal/reflect/RefMethod;, "Lcom/oplus/internal/reflect/RefMethod<TT;>;"
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/oplus/internal/reflect/internal/BaseMethod;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/internal/reflect/RefMethod;->mappingFieldName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public varargs blacklist call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    .local p0, "this":Lcom/oplus/internal/reflect/RefMethod;, "Lcom/oplus/internal/reflect/RefMethod<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/internal/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefMethod call failed for mappingFieldName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/internal/reflect/RefMethod;->mappingFieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs blacklist callWithDefault(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/oplus/internal/reflect/RefMethod;, "Lcom/oplus/internal/reflect/RefMethod<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/oplus/internal/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;)V

    .line 35
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object p2
.end method

.method public varargs blacklist callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/oplus/internal/reflect/RefMethod;, "Lcom/oplus/internal/reflect/RefMethod<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/internal/reflect/RefMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/utils/TypeUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 45
    :cond_0
    throw v0
.end method
