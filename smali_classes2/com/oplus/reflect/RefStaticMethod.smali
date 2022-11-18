.class public Lcom/oplus/reflect/RefStaticMethod;
.super Ljava/lang/Object;
.source "RefStaticMethod.java"


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
.field private static final blacklist TAG:Ljava/lang/String; = "RefStaticMethod"


# instance fields
.field private blacklist method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 11
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

    .line 15
    .local p0, "this":Lcom/oplus/reflect/RefStaticMethod;, "Lcom/oplus/reflect/RefStaticMethod<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/oplus/reflect/MethodParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 17
    const-class v0, Lcom/oplus/reflect/MethodParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/reflect/MethodParams;

    invoke-interface {v0}, Lcom/oplus/reflect/MethodParams;->value()[Ljava/lang/Class;

    move-result-object v0

    .line 18
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 19
    aget-object v3, v0, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 32
    .end local v0    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto/16 :goto_8

    :cond_1
    const-class v0, Lcom/oplus/reflect/MethodReflectParams;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "arrayset":Z
    const-class v2, Lcom/oplus/reflect/MethodReflectParams;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/oplus/reflect/MethodReflectParams;

    invoke-interface {v2}, Lcom/oplus/reflect/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "typeNames":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Class;

    .line 36
    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Class;

    .line 37
    .local v4, "types2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    const-string v7, "RefStaticMethod"

    if-ge v5, v6, :cond_5

    .line 38
    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/oplus/reflect/RefStaticMethod;->getProtoType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 39
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_2

    .line 41
    :try_start_0
    aget-object v8, v2, v5

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    .line 44
    goto :goto_2

    .line 42
    :catch_0
    move-exception v8

    .line 43
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v8}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :goto_2
    aput-object v6, v3, v5

    .line 47
    aget-object v8, v2, v5

    const-string v9, "java.util.HashSet"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 48
    const/4 v0, 0x1

    .line 49
    move-object v8, v6

    .line 51
    .local v8, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v9, "android.util.ArraySet"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v7

    .line 54
    goto :goto_3

    .line 52
    :catch_1
    move-exception v9

    .line 53
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    if-eqz v8, :cond_3

    .line 56
    aput-object v8, v4, v5

    goto :goto_4

    .line 58
    :cond_3
    aput-object v6, v4, v5

    .line 60
    .end local v8    # "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    goto :goto_5

    .line 61
    :cond_4
    aput-object v6, v4, v5

    .line 37
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 65
    .end local v5    # "i":I
    :cond_5
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    goto :goto_6

    .line 66
    :catch_2
    move-exception v5

    .line 67
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    if-eqz v0, :cond_6

    .line 69
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;

    .line 72
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_6
    iget-object v5, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    .end local v0    # "arrayset":Z
    .end local v2    # "typeNames":[Ljava/lang/String;
    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "types2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_8

    .line 74
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 75
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 76
    iput-object v4, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;

    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 78
    goto :goto_8

    .line 74
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 83
    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    .line 86
    return-void

    .line 84
    :cond_a
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs whitelist callIfPresent(Lcom/oplus/reflect/RefStaticMethod;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/reflect/RefStaticMethod<",
            "TT;>;TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 131
    .local p0, "method":Lcom/oplus/reflect/RefStaticMethod;, "Lcom/oplus/reflect/RefStaticMethod<TT;>;"
    .local p1, "def":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/oplus/reflect/RefStaticMethod$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/oplus/reflect/RefStaticMethod$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getProtoType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 89
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 92
    :cond_0
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 95
    :cond_1
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 98
    :cond_2
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 101
    :cond_3
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 104
    :cond_4
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 107
    :cond_5
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 110
    :cond_6
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 113
    :cond_7
    const-string/jumbo v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 116
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$callIfPresent$0([Ljava/lang/Object;Lcom/oplus/reflect/RefStaticMethod;)Ljava/lang/Object;
    .locals 1
    .param p0, "params"    # [Ljava/lang/Object;
    .param p1, "m"    # Lcom/oplus/reflect/RefStaticMethod;

    .line 131
    invoke-virtual {p1, p0}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs whitelist call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/oplus/reflect/RefStaticMethod;, "Lcom/oplus/reflect/RefStaticMethod<TT;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RefStaticMethod"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public varargs whitelist callWithException([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/oplus/reflect/RefStaticMethod;, "Lcom/oplus/reflect/RefStaticMethod<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/reflect/RefStaticMethod;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 141
    :cond_0
    throw v0
.end method
