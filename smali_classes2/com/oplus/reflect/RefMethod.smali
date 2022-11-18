.class public Lcom/oplus/reflect/RefMethod;
.super Ljava/lang/Object;
.source "RefMethod.java"


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
.field private static final blacklist TAG:Ljava/lang/String; = "RefMethod"


# instance fields
.field private blacklist method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 8
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

    .line 16
    .local p0, "this":Lcom/oplus/reflect/RefMethod;, "Lcom/oplus/reflect/RefMethod<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/oplus/reflect/MethodParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 18
    const-class v0, Lcom/oplus/reflect/MethodParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/reflect/MethodParams;

    invoke-interface {v0}, Lcom/oplus/reflect/MethodParams;->value()[Ljava/lang/Class;

    move-result-object v0

    .line 19
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/reflect/RefMethod;->method:Ljava/lang/reflect/Method;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 21
    .end local v0    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_3

    :cond_0
    const-class v0, Lcom/oplus/reflect/MethodReflectParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    const-class v0, Lcom/oplus/reflect/MethodReflectParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/reflect/MethodReflectParams;

    invoke-interface {v0}, Lcom/oplus/reflect/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "typeNames":[Ljava/lang/String;
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/Class;

    .line 24
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 25
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/oplus/reflect/RefStaticMethod;->getProtoType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 26
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_1

    .line 28
    :try_start_0
    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 31
    goto :goto_1

    .line 29
    :catch_0
    move-exception v5

    .line 30
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RefMethod"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_1
    aput-object v4, v2, v3

    .line 24
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/reflect/RefMethod;->method:Ljava/lang/reflect/Method;

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    .end local v0    # "typeNames":[Ljava/lang/String;
    .end local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_3

    .line 39
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 40
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    iput-object v4, p0, Lcom/oplus/reflect/RefMethod;->method:Ljava/lang/reflect/Method;

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    goto :goto_3

    .line 39
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 47
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/oplus/reflect/RefMethod;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 50
    return-void

    .line 48
    :cond_6
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs whitelist call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "receiver"    # Ljava/lang/Object;
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

    .line 54
    .local p0, "this":Lcom/oplus/reflect/RefMethod;, "Lcom/oplus/reflect/RefMethod<TT;>;"
    const-string v0, "RefMethod"

    :try_start_0
    iget-object v1, p0, Lcom/oplus/reflect/RefMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 55
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 64
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs whitelist callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
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

    .line 69
    .local p0, "this":Lcom/oplus/reflect/RefMethod;, "Lcom/oplus/reflect/RefMethod<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/reflect/RefMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 74
    :cond_0
    throw v0
.end method

.method public whitelist paramList()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/oplus/reflect/RefMethod;, "Lcom/oplus/reflect/RefMethod<TT;>;"
    iget-object v0, p0, Lcom/oplus/reflect/RefMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
