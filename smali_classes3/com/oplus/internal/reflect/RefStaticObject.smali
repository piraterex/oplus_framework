.class public final Lcom/oplus/internal/reflect/RefStaticObject;
.super Lcom/oplus/internal/reflect/internal/BaseField;
.source "RefStaticObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/internal/reflect/internal/BaseField;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/oplus/internal/reflect/RefStaticObject;, "Lcom/oplus/internal/reflect/RefStaticObject<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/oplus/internal/reflect/internal/BaseField;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 13
    return-void
.end method


# virtual methods
.method public blacklist get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    .local p0, "this":Lcom/oplus/internal/reflect/RefStaticObject;, "Lcom/oplus/internal/reflect/RefStaticObject<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oplus/internal/reflect/RefStaticObject;->getObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/utils/TypeUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public blacklist getWithDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/oplus/internal/reflect/RefStaticObject;, "Lcom/oplus/internal/reflect/RefStaticObject<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oplus/internal/reflect/RefStaticObject;->getObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/utils/TypeUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p1
.end method

.method public blacklist getWithException()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/oplus/internal/reflect/RefStaticObject;, "Lcom/oplus/internal/reflect/RefStaticObject<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/internal/reflect/RefStaticObject;->getObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/utils/TypeUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    .local p0, "this":Lcom/oplus/internal/reflect/RefStaticObject;, "Lcom/oplus/internal/reflect/RefStaticObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/oplus/internal/reflect/RefStaticObject;->setObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setWithException(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/oplus/internal/reflect/RefStaticObject;, "Lcom/oplus/internal/reflect/RefStaticObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/internal/reflect/RefStaticObject;->setObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
