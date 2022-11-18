.class public Lcom/android/internal/os/BinderTransactionNameResolver;
.super Ljava/lang/Object;
.source "BinderTransactionNameResolver.java"


# static fields
.field private static final blacklist NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private final blacklist mGetDefaultTransactionNameMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 53
    :try_start_0
    const-class v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    const-string/jumbo v1, "noDefaultTransactionName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    return-void
.end method

.method public static blacklist noDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 48
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getMethodName(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 6
    .param p2, "transactionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 69
    .local p1, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    iget-object v0, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 70
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 72
    :try_start_0
    const-string v3, "getDefaultTransactionName"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;

    .line 76
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    :cond_0
    sget-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 85
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
