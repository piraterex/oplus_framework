.class public final Landroid/widget/RemoteViews$ColorResources;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorResources"
.end annotation


# static fields
.field private static final blacklist ARSC_ENTRY_SIZE:I = 0x10

.field private static final blacklist FIRST_RESOURCE_COLOR_ID:I = 0x106001d

.field private static final blacklist LAST_RESOURCE_COLOR_ID:I = 0x106005d


# instance fields
.field private blacklist mLoader:Landroid/content/res/loader/ResourcesLoader;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/loader/ResourcesLoader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/res/loader/ResourcesLoader;

    .line 6061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6062
    iput-object p1, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    .line 6063
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorMapping"    # Landroid/util/SparseIntArray;

    .line 6133
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/widget/RemoteViews$ColorResources;->createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6134
    .local v1, "contentBytes":[B
    if-nez v1, :cond_0

    .line 6135
    return-object v0

    .line 6137
    :cond_0
    const/4 v2, 0x0

    .line 6139
    .local v2, "arscFile":Ljava/io/FileDescriptor;
    :try_start_1
    const-string/jumbo v3, "remote_views_theme_colors.arsc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 6141
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 6142
    .local v3, "pipeWriter":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 6144
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6145
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    new-instance v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v5}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 6146
    .local v5, "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    nop

    .line 6147
    invoke-static {v4, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v6

    .line 6146
    invoke-virtual {v5, v6}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 6148
    new-instance v6, Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {v6, v5}, Landroid/widget/RemoteViews$ColorResources;-><init>(Landroid/content/res/loader/ResourcesLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6149
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6150
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 6152
    if-eqz v2, :cond_2

    .line 6153
    :try_start_6
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 6148
    :cond_2
    return-object v6

    .line 6144
    .end local v5    # "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .end local v3    # "pipeWriter":Ljava/io/OutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :cond_3
    :goto_0
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 6141
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "contentBytes":[B
    .restart local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local v3    # "pipeWriter":Ljava/io/OutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catchall_2
    move-exception v4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :goto_1
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 6152
    .end local v3    # "pipeWriter":Ljava/io/OutputStream;
    .restart local v1    # "contentBytes":[B
    .restart local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catchall_4
    move-exception v3

    if-eqz v2, :cond_4

    .line 6153
    :try_start_b
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 6155
    :cond_4
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 6156
    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v1

    .line 6157
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "RemoteViews"

    const-string v3, "Failed to setup the context for theme colors"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6159
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorResources"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6096
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 6098
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Landroid/widget/RemoteViews$ColorResources;->readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 6099
    .local v1, "rawContent":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 6100
    .local v1, "content":[B
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6101
    .end local v0    # "input":Ljava/io/InputStream;
    :cond_0
    array-length v0, v1

    add-int/lit16 v0, v0, -0x5d0

    const/4 v2, 0x4

    sub-int/2addr v0, v2

    .line 6103
    .local v0, "valuesOffset":I
    if-gez v0, :cond_1

    .line 6104
    const-string v2, "RemoteViews"

    const-string v3, "ARSC file for theme colors is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6105
    const/4 v2, 0x0

    return-object v2

    .line 6107
    :cond_1
    const v3, 0x106001d

    .local v3, "colorRes":I
    :goto_0
    const v4, 0x106005d

    if-gt v3, v4, :cond_3

    .line 6110
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 6111
    .local v4, "index":I
    mul-int/lit8 v5, v4, 0x10

    add-int/2addr v5, v0

    .line 6112
    .local v5, "offset":I
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 6114
    .local v6, "value":I
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_1
    if-ge v7, v2, :cond_2

    .line 6115
    add-int v8, v5, v7

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 6116
    shr-int/lit8 v6, v6, 0x8

    .line 6114
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6108
    .end local v4    # "index":I
    .end local v5    # "offset":I
    .end local v6    # "value":I
    .end local v7    # "b":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6119
    .end local v3    # "colorRes":I
    :cond_3
    return-object v1

    .line 6096
    .end local v1    # "content":[B
    .local v0, "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method private static blacklist readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6075
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6076
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 6077
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 6078
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 6079
    .local v2, "read":I
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 6080
    .end local v2    # "read":I
    goto :goto_0

    .line 6081
    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist apply(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 6071
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/res/loader/ResourcesLoader;

    iget-object v2, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 6072
    return-void
.end method
