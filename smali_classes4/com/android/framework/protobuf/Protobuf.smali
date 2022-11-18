.class final Lcom/android/framework/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "Protobuf.java"


# static fields
.field private static final blacklist INSTANCE:Lcom/android/framework/protobuf/Protobuf;


# instance fields
.field private final blacklist schemaCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/framework/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/android/framework/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/Protobuf;->INSTANCE:Lcom/android/framework/protobuf/Protobuf;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 140
    new-instance v0, Lcom/android/framework/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;

    .line 141
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/framework/protobuf/Protobuf;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/framework/protobuf/Protobuf;->INSTANCE:Lcom/android/framework/protobuf/Protobuf;

    return-object v0
.end method


# virtual methods
.method blacklist getTotalSchemaSize()I
    .locals 4

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/Schema;

    .line 146
    .local v2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    instance-of v3, v2, Lcom/android/framework/protobuf/MessageSchema;

    if-eqz v3, :cond_0

    .line 147
    move-object v3, v2

    check-cast v3, Lcom/android/framework/protobuf/MessageSchema;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/MessageSchema;->getSchemaSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 149
    .end local v2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    return v0
.end method

.method public blacklist isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 84
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 76
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)V
    .locals 1
    .param p2, "reader"    # Lcom/android/framework/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/Protobuf;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 66
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p2, "reader"    # Lcom/android/framework/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 72
    return-void
.end method

.method public blacklist registerSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    .line 119
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    const-string/jumbo v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "schema"

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    return-object v0
.end method

.method public blacklist registerSchemaOverride(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    .line 134
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    const-string/jumbo v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v0, "schema"

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    return-object v0
.end method

.method public blacklist schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 89
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    .line 92
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    if-nez v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/framework/protobuf/Protobuf;->schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;

    invoke-interface {v1, p1}, Lcom/android/framework/protobuf/SchemaFactory;->createSchema(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 96
    .local v1, "previous":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    if-eqz v1, :cond_0

    .line 98
    move-object v0, v1

    .line 101
    .end local v1    # "previous":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    :cond_0
    return-object v0
.end method

.method public blacklist schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 61
    return-void
.end method
