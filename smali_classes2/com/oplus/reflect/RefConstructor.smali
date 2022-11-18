.class public Lcom/oplus/reflect/RefConstructor;
.super Ljava/lang/Object;
.source "RefConstructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RefConstructor"


# instance fields
.field private blacklist ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/oplus/reflect/RefConstructor;, "Lcom/oplus/reflect/RefConstructor<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/oplus/reflect/MethodParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const-class v0, Lcom/oplus/reflect/MethodParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/reflect/MethodParams;

    invoke-interface {v0}, Lcom/oplus/reflect/MethodParams;->value()[Ljava/lang/Class;

    move-result-object v0

    .line 15
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/reflect/RefConstructor;->ctor:Ljava/lang/reflect/Constructor;

    .line 16
    .end local v0    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_2

    :cond_0
    const-class v0, Lcom/oplus/reflect/MethodReflectParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    const-class v0, Lcom/oplus/reflect/MethodReflectParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/reflect/MethodReflectParams;

    invoke-interface {v0}, Lcom/oplus/reflect/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "values":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Class;

    .line 19
    .local v1, "parameterTypes":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 20
    .local v2, "N":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 22
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :catch_0
    move-exception v3

    .line 25
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RefConstructor"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/reflect/RefConstructor;->ctor:Ljava/lang/reflect/Constructor;

    .line 29
    .end local v0    # "values":[Ljava/lang/String;
    .end local v1    # "parameterTypes":[Ljava/lang/Class;
    .end local v2    # "N":I
    goto :goto_2

    .line 30
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/reflect/RefConstructor;->ctor:Ljava/lang/reflect/Constructor;

    .line 32
    :goto_2
    iget-object v0, p0, Lcom/oplus/reflect/RefConstructor;->ctor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/oplus/reflect/RefConstructor;->ctor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 35
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/oplus/reflect/RefConstructor;, "Lcom/oplus/reflect/RefConstructor<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/reflect/RefConstructor;->ctor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefConstructor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    const/4 v1, 0x0

    return-object v1
.end method

.method public varargs whitelist newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/oplus/reflect/RefConstructor;, "Lcom/oplus/reflect/RefConstructor<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/reflect/RefConstructor;->ctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefConstructor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v1, 0x0

    return-object v1
.end method
