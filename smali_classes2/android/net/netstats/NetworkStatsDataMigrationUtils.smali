.class public Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.super Ljava/lang/Object;
.source "NetworkStatsDataMigrationUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$IdentitySetVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$HistoryVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$CollectionVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$Prefix;
    }
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x2000

.field private static final blacklist FILE_MAGIC:I = 0x414e4554

.field public static final blacklist PREFIX_UID:Ljava/lang/String; = "uid"

.field public static final blacklist PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field public static final blacklist PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final blacklist sPrefixLegacyFileNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;

    invoke-direct {v0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;-><init>()V

    sput-object v0, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static blacklist getCollapsedLegacyType(I)I
    .locals 1
    .param p0, "networkType"    # I

    .line 497
    packed-switch p0, :pswitch_data_0

    .line 510
    :pswitch_0
    return p0

    .line 508
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getPlatformBaseDir()Ljava/io/File;
    .locals 3

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 152
    return-object v0
.end method

.method private static blacklist getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformBaseDir()Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, "platformFiles":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    return-object v0

    .line 169
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 170
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 172
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v5    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "files":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static blacklist getPlatformSystemDir()Ljava/io/File;
    .locals 3

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist readFullLongArray(Ljava/io/DataInput;)[J
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 310
    .local v0, "size":I
    if-ltz v0, :cond_1

    .line 311
    new-array v1, v0, [J

    .line 312
    .local v1, "values":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 313
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 310
    .end local v1    # "values":[J
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    .locals 13
    .param p0, "builder"    # Landroid/net/NetworkStatsCollection$Builder;
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "taggedData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 542
    .local v0, "magic":I
    const v1, 0x414e4554

    if-ne v0, v1, :cond_5

    .line 546
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 547
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    .line 587
    new-instance v2, Ljava/net/ProtocolException;

    goto :goto_4

    .line 563
    :pswitch_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 564
    .local v2, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 565
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v4

    .line 567
    .local v4, "ident":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/NetworkIdentity;>;"
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 568
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 569
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 570
    .local v7, "uid":I
    const/4 v8, 0x4

    const/4 v9, 0x0

    if-lt v1, v8, :cond_0

    .line 571
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    goto :goto_2

    .line 572
    :cond_0
    move v8, v9

    :goto_2
    nop

    .line 573
    .local v8, "set":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v10

    .line 575
    .local v10, "tag":I
    new-instance v11, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v11, v4, v7, v8, v10}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    .line 577
    .local v11, "key":Landroid/net/NetworkStatsCollection$Key;
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v12

    .line 579
    .local v12, "history":Landroid/net/NetworkStatsHistory;
    if-nez v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    if-eq v9, p2, :cond_2

    .line 580
    invoke-virtual {p0, v11, v12}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    .line 568
    .end local v7    # "uid":I
    .end local v8    # "set":I
    .end local v10    # "tag":I
    .end local v11    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v12    # "history":Landroid/net/NetworkStatsHistory;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 564
    .end local v4    # "ident":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/NetworkIdentity;>;"
    .end local v5    # "size":I
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    .end local v3    # "i":I
    :cond_4
    goto :goto_3

    .line 558
    .end local v2    # "identSize":I
    :pswitch_1
    goto :goto_3

    .line 552
    :pswitch_2
    nop

    .line 592
    .end local v0    # "magic":I
    .end local v1    # "version":I
    :goto_3
    goto :goto_5

    .line 587
    .restart local v0    # "magic":I
    .restart local v1    # "version":I
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local p0    # "builder":Landroid/net/NetworkStatsCollection$Builder;
    .end local p1    # "in":Ljava/io/DataInput;
    .end local p2    # "taggedData":Z
    throw v2

    .line 543
    .end local v1    # "version":I
    .restart local p0    # "builder":Landroid/net/NetworkStatsCollection$Builder;
    .restart local p1    # "in":Ljava/io/DataInput;
    .restart local p2    # "taggedData":Z
    :cond_5
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local p0    # "builder":Landroid/net/NetworkStatsCollection$Builder;
    .end local p1    # "in":Ljava/io/DataInput;
    .end local p2    # "taggedData":Z
    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v0    # "magic":I
    .restart local p0    # "builder":Landroid/net/NetworkStatsCollection$Builder;
    .restart local p1    # "in":Ljava/io/DataInput;
    .restart local p2    # "taggedData":Z
    :catch_0
    move-exception v0

    .line 593
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V
    .locals 4
    .param p0, "builder"    # Landroid/net/NetworkStatsCollection$Builder;
    .param p1, "uidFile"    # Ljava/io/File;
    .param p2, "onlyTaggedData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 516
    .local v0, "inputFile":Landroid/util/AtomicFile;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 518
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {p0, v1, p2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 521
    throw v2
.end method

.method private static blacklist readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readPlatformCollection(Ljava/lang/String;J)Landroid/net/NetworkStatsCollection;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "bucketDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Landroid/net/NetworkStatsCollection$Builder;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkStatsCollection$Builder;-><init>(J)V

    .line 231
    .local v0, "builder":Landroid/net/NetworkStatsCollection$Builder;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v2, "uid_tag"

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 234
    :pswitch_0
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 235
    .local v1, "uidFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V

    .line 244
    .end local v1    # "uidFile":Ljava/io/File;
    :cond_1
    :goto_2
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 245
    .local v1, "platformFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 246
    .local v3, "platformFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    invoke-static {v0, v3}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V

    .line 249
    .end local v3    # "platformFile":Ljava/io/File;
    :cond_2
    goto :goto_3

    .line 251
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkStatsCollection$Builder;->build()Landroid/net/NetworkStatsCollection;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x19ebf4d5 -> :sswitch_1
        0x1c450 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    .locals 12
    .param p0, "builder"    # Landroid/net/NetworkStatsCollection$Builder;
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 275
    .local v0, "magic":I
    const v1, 0x414e4554

    if-ne v0, v1, :cond_2

    .line 279
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 280
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    .line 302
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :pswitch_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 284
    .local v2, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 285
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v4

    .line 287
    .local v4, "ident":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/NetworkIdentity;>;"
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 288
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 289
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 290
    .local v7, "uid":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 291
    .local v8, "set":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 293
    .local v9, "tag":I
    new-instance v10, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    .line 295
    .local v10, "key":Landroid/net/NetworkStatsCollection$Key;
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v11

    .line 296
    .local v11, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p0, v10, v11}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    .line 288
    .end local v7    # "uid":I
    .end local v8    # "set":I
    .end local v9    # "tag":I
    .end local v10    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v11    # "history":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 284
    .end local v4    # "ident":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/NetworkIdentity;>;"
    .end local v5    # "size":I
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    .end local v3    # "i":I
    :cond_1
    nop

    .line 305
    .end local v2    # "identSize":I
    return-void

    .line 276
    .end local v1    # "version":I
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V
    .locals 3
    .param p0, "builder"    # Landroid/net/NetworkStatsCollection$Builder;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 257
    .local v0, "is":Ljava/io/FileInputStream;
    new-instance v1, Lcom/android/internal/util/FastDataInput;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/FastDataInput;-><init>(Ljava/io/InputStream;I)V

    .line 259
    .local v1, "dataIn":Lcom/android/internal/util/FastDataInput;
    :try_start_0
    invoke-static {p0, v1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 262
    throw v2
.end method

.method private static blacklist readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;
    .locals 29
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    new-array v0, v0, [J

    .line 374
    .local v0, "activeTime":[J
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 375
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    .line 403
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :pswitch_0
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 390
    .local v2, "bucketDuration":J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v4

    .line 391
    .local v4, "bucketStart":[J
    const/4 v5, 0x3

    if-lt v1, v5, :cond_0

    .line 392
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    goto :goto_0

    .line 393
    :cond_0
    array-length v5, v4

    new-array v5, v5, [J

    :goto_0
    move-object v0, v5

    .line 394
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    .line 395
    .local v5, "rxBytes":[J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v6

    .line 396
    .local v6, "rxPackets":[J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    .line 397
    .local v7, "txBytes":[J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v8

    .line 398
    .local v8, "txPackets":[J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v9

    .line 399
    .local v9, "operations":[J
    array-length v10, v4

    .line 400
    .local v10, "bucketCount":I
    goto :goto_1

    .line 377
    .end local v2    # "bucketDuration":J
    .end local v4    # "bucketStart":[J
    .end local v5    # "rxBytes":[J
    .end local v6    # "rxPackets":[J
    .end local v7    # "txBytes":[J
    .end local v8    # "txPackets":[J
    .end local v9    # "operations":[J
    .end local v10    # "bucketCount":I
    :pswitch_1
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 378
    .restart local v2    # "bucketDuration":J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v4

    .line 379
    .restart local v4    # "bucketStart":[J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    .line 380
    .restart local v5    # "rxBytes":[J
    array-length v6, v4

    new-array v6, v6, [J

    .line 381
    .restart local v6    # "rxPackets":[J
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    .line 382
    .restart local v7    # "txBytes":[J
    array-length v8, v4

    new-array v8, v8, [J

    .line 383
    .restart local v8    # "txPackets":[J
    array-length v9, v4

    new-array v9, v9, [J

    .line 384
    .restart local v9    # "operations":[J
    array-length v10, v4

    .line 385
    .restart local v10    # "bucketCount":I
    nop

    .line 407
    :goto_1
    new-instance v11, Landroid/net/NetworkStatsHistory$Builder;

    invoke-direct {v11, v2, v3, v10}, Landroid/net/NetworkStatsHistory$Builder;-><init>(JI)V

    .line 409
    .local v11, "historyBuilder":Landroid/net/NetworkStatsHistory$Builder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v10, :cond_1

    .line 410
    new-instance v28, Landroid/net/NetworkStatsHistory$Entry;

    aget-wide v14, v4, v12

    aget-wide v16, v0, v12

    aget-wide v18, v5, v12

    aget-wide v20, v6, v12

    aget-wide v22, v7, v12

    aget-wide v24, v8, v12

    aget-wide v26, v9, v12

    move-object/from16 v13, v28

    invoke-direct/range {v13 .. v27}, Landroid/net/NetworkStatsHistory$Entry;-><init>(JJJJJJJ)V

    .line 413
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual {v11, v13}, Landroid/net/NetworkStatsHistory$Builder;->addEntry(Landroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Builder;

    .line 409
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 416
    .end local v12    # "i":I
    :cond_1
    invoke-virtual {v11}, Landroid/net/NetworkStatsHistory$Builder;->build()Landroid/net/NetworkStatsHistory;

    move-result-object v12

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;
    .locals 16
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/NetworkIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 423
    .local v0, "version":I
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 424
    .local v1, "size":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 425
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/NetworkIdentity;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_9

    .line 426
    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    .line 427
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    .line 429
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 430
    .local v5, "type":I
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 431
    .local v6, "ratType":I
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v7

    .line 433
    .local v7, "subscriberId":Ljava/lang/String;
    const/4 v8, 0x3

    if-lt v0, v8, :cond_1

    .line 434
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v8

    .local v8, "networkId":Ljava/lang/String;
    goto :goto_1

    .line 436
    .end local v8    # "networkId":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    .line 439
    .restart local v8    # "networkId":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x2

    if-lt v0, v9, :cond_2

    .line 440
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v9

    .local v9, "roaming":Z
    goto :goto_2

    .line 442
    .end local v9    # "roaming":Z
    :cond_2
    const/4 v9, 0x0

    .line 446
    .restart local v9    # "roaming":Z
    :goto_2
    const/4 v10, 0x4

    if-lt v0, v10, :cond_3

    .line 447
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    .local v4, "metered":Z
    goto :goto_3

    .line 452
    .end local v4    # "metered":Z
    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 456
    .restart local v4    # "metered":Z
    :goto_3
    const/4 v10, 0x5

    if-lt v0, v10, :cond_5

    .line 457
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v10

    .local v10, "defaultNetwork":Z
    goto :goto_4

    .line 459
    .end local v10    # "defaultNetwork":Z
    :cond_5
    const/4 v10, 0x1

    .line 463
    .restart local v10    # "defaultNetwork":Z
    :goto_4
    const/4 v11, 0x6

    if-lt v0, v11, :cond_6

    .line 464
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    .local v11, "oemNetCapabilities":I
    goto :goto_5

    .line 466
    .end local v11    # "oemNetCapabilities":I
    :cond_6
    const/4 v11, 0x0

    .line 470
    .restart local v11    # "oemNetCapabilities":I
    :goto_5
    const/4 v12, 0x7

    if-lt v0, v12, :cond_7

    .line 471
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v12

    .local v12, "subId":I
    goto :goto_6

    .line 473
    .end local v12    # "subId":I
    :cond_7
    const/4 v12, -0x1

    .line 478
    .restart local v12    # "subId":I
    :goto_6
    invoke-static {v5}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getCollapsedLegacyType(I)I

    move-result v13

    .line 479
    .local v13, "collapsedLegacyType":I
    new-instance v14, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v14}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 480
    invoke-virtual {v14, v13}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    .line 481
    invoke-virtual {v14, v7}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    .line 482
    invoke-virtual {v14, v8}, Landroid/net/NetworkIdentity$Builder;->setWifiNetworkKey(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    .line 483
    invoke-virtual {v14, v9}, Landroid/net/NetworkIdentity$Builder;->setRoaming(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    .line 484
    invoke-virtual {v14, v10}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    .line 485
    invoke-virtual {v14, v11}, Landroid/net/NetworkIdentity$Builder;->setOemManaged(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    .line 486
    invoke-virtual {v14, v12}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    .line 487
    .local v14, "builder":Landroid/net/NetworkIdentity$Builder;
    if-nez v5, :cond_8

    const/4 v15, -0x1

    if-eq v6, v15, :cond_8

    .line 488
    invoke-virtual {v14, v6}, Landroid/net/NetworkIdentity$Builder;->setRatType(I)Landroid/net/NetworkIdentity$Builder;

    .line 490
    :cond_8
    invoke-virtual {v14}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v4    # "metered":Z
    .end local v5    # "type":I
    .end local v6    # "ratType":I
    .end local v7    # "subscriberId":Ljava/lang/String;
    .end local v8    # "networkId":Ljava/lang/String;
    .end local v9    # "roaming":Z
    .end local v10    # "defaultNetwork":Z
    .end local v11    # "oemNetCapabilities":I
    .end local v12    # "subId":I
    .end local v13    # "collapsedLegacyType":I
    .end local v14    # "builder":Landroid/net/NetworkIdentity$Builder;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 492
    .end local v3    # "i":I
    :cond_9
    return-object v2
.end method

.method private static blacklist readVarLong(Ljava/io/DataInput;)J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "shift":I
    const-wide/16 v1, 0x0

    .line 337
    .local v1, "result":J
    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 338
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 339
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 340
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 341
    return-wide v1

    .line 343
    :cond_0
    nop

    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x7

    .line 344
    goto :goto_0

    .line 345
    :cond_1
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "malformed var long"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist readVarLongArray(Ljava/io/DataInput;)[J
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 321
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 322
    :cond_0
    if-ltz v0, :cond_2

    .line 323
    new-array v1, v0, [J

    .line 324
    .local v1, "values":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 325
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLong(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 322
    .end local v1    # "values":[J
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
