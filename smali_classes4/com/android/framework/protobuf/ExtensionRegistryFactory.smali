.class final Lcom/android/framework/protobuf/ExtensionRegistryFactory;
.super Ljava/lang/Object;
.source "ExtensionRegistryFactory.java"


# static fields
.field static final blacklist EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist FULL_REGISTRY_CLASS_NAME:Ljava/lang/String; = "com.android.framework.protobuf.ExtensionRegistry"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->reflectExtensionRegistry()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .locals 1

    .line 62
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    const-string/jumbo v0, "newInstance"

    invoke-static {v0}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 69
    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>()V

    return-object v0
.end method

.method public static blacklist createEmpty()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .locals 1

    .line 74
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 81
    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    return-object v0
.end method

.method private static final blacklist invokeSubclassFactory(Ljava/lang/String;)Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 93
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 92
    return-object v0
.end method

.method static blacklist isFullRegistry(Lcom/android/framework/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .param p0, "registry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 86
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0
.end method

.method static blacklist reflectExtensionRegistry()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 52
    :try_start_0
    const-string v0, "com.android.framework.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method
