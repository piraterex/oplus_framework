.class public Lcom/android/framework/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field static final blacklist EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

.field static final blacklist EXTENSION_CLASS_NAME:Ljava/lang/String; = "com.android.framework.protobuf.Extension"

.field private static blacklist doFullRuntimeInheritanceCheck:Z

.field private static volatile blacklist eagerlyParseMessageSets:Z

.field private static volatile blacklist emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

.field private static final blacklist extensionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    .line 97
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->resolveExtensionClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionClass:Ljava/lang/Class;

    .line 197
    new-instance v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 195
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "other"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_0

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p1, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 205
    :goto_0
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "empty"    # Z

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 212
    return-void
.end method

.method public static blacklist getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .locals 3

    .line 126
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 127
    .local v0, "result":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    if-nez v0, :cond_2

    .line 128
    const-class v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v2, Lcom/android/framework/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-object v0, v2

    .line 130
    if-nez v0, :cond_1

    .line 133
    sget-boolean v2, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v2, :cond_0

    .line 134
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->createEmpty()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_0
    sget-object v2, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :goto_0
    sput-object v2, Lcom/android/framework/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-object v0, v2

    .line 137
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 139
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static blacklist isEagerlyParseMessageSets()Z
    .locals 1

    .line 100
    sget-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return v0
.end method

.method public static blacklist newInstance()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .locals 1

    .line 114
    sget-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->create()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>()V

    .line 114
    :goto_0
    return-object v0
.end method

.method static blacklist resolveExtensionClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 89
    :try_start_0
    const-string v0, "com.android.framework.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist setEagerlyParseMessageSets(Z)V
    .locals 0
    .param p0, "isEagerlyParse"    # Z

    .line 104
    sput-boolean p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 105
    return-void
.end method


# virtual methods
.method public final blacklist add(Lcom/android/framework/protobuf/ExtensionLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "**>;)V"
        }
    .end annotation

    .line 173
    .local p1, "extension":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<**>;"
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->add(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 176
    :cond_0
    sget-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->isFullRegistry(Lcom/android/framework/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "add"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionClass:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 181
    const-string v0, "Could not invoke ExtensionRegistry#add for %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public final blacklist add(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .line 163
    .local p1, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 164
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 163
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public blacklist findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 157
    .local p1, "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    iget-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 157
    return-object v0
.end method

.method public blacklist getUnmodifiable()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .locals 1

    .line 145
    new-instance v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method
