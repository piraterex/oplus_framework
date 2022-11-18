.class public final Landroid/graphics/fonts/Font$Builder;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mException:Ljava/io/IOException;

.field private blacklist mFile:Ljava/io/File;

.field private blacklist mFont:Landroid/graphics/fonts/Font;

.field private blacklist mItalic:I

.field private blacklist mLocaleList:Ljava/lang/String;

.field private blacklist mTtcIndex:I

.field private blacklist mWeight:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 83
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 182
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p2, v1, v0}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isAsset"    # Z
    .param p4, "cookie"    # I

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 83
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 200
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;I)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 83
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 215
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 216
    .local v1, "value":Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 217
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 218
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 219
    return-void

    .line 221
    :cond_0
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be font file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 224
    return-void

    .line 228
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v3, v2, v0, v4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 232
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/fonts/Font;)V
    .locals 1
    .param p1, "font"    # Landroid/graphics/fonts/Font;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 83
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 240
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    .line 242
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 244
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 245
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 246
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 247
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 248
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 153
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 154
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 83
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 165
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 167
    .local v1, "fc":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long/2addr v2, p2

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide v5, p4

    .line 168
    .end local p4    # "size":J
    .local v5, "size":J
    :goto_0
    :try_start_2
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p4

    iput-object p4, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .end local v1    # "fc":Ljava/nio/channels/FileChannel;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 169
    :catch_0
    move-exception p4

    goto :goto_3

    .line 165
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    move-wide p4, v5

    goto :goto_1

    .end local v5    # "size":J
    .restart local p4    # "size":J
    :catchall_1
    move-exception v1

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "size":J
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 169
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catch_1
    move-exception v0

    move-wide v5, p4

    move-object p4, v0

    .line 170
    .restart local v5    # "size":J
    .local p4, "e":Ljava/io/IOException;
    :goto_3
    iput-object p4, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 172
    .end local p4    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .locals 7
    .param p1, "path"    # Ljava/io/File;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 83
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 137
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 140
    .local v1, "fc":Ljava/nio/channels/FileChannel;
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v1    # "fc":Ljava/nio/channels/FileChannel;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 138
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .end local p1    # "path":Ljava/io/File;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .restart local p1    # "path":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 145
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;
    .param p2, "localeList"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    .line 128
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor whitelist <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 83
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 97
    const-string v0, "buffer can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 103
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only direct buffer can be used as the source of font data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "localeList"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 114
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 115
    iput-object p3, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static blacklist createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isAsset"    # Z
    .param p3, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v0, "assetManager can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eqz p2, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .local v0, "assetFD":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 284
    .end local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 272
    :cond_0
    if-lez p3, :cond_1

    .line 273
    invoke-virtual {p0, p3, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .restart local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 275
    .end local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 278
    .restart local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 280
    .local v2, "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 281
    .local v4, "startOffset":J
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    .line 282
    .local v6, "declaredLength":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    :cond_2
    return-object v3

    .line 278
    .end local v2    # "fc":Ljava/nio/channels/FileChannel;
    .end local v4    # "startOffset":J
    .end local v6    # "declaredLength":J
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "am":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "isAsset":Z
    .end local p3    # "cookie":I
    :cond_3
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 288
    .end local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "am":Landroid/content/res/AssetManager;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "isAsset":Z
    .restart local p3    # "cookie":I
    :goto_2
    const/4 v0, 0x3

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_3

    .line 289
    :cond_4
    invoke-virtual {p0, p3, p1, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    :goto_3
    nop

    .line 291
    .local v0, "assetStream":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 292
    .local v1, "capacity":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 293
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 296
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 300
    nop

    .line 301
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 300
    :cond_5
    return-object v2

    .line 297
    :cond_6
    :try_start_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to access full contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "assetStream":Ljava/io/InputStream;
    .end local p0    # "am":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "isAsset":Z
    .end local p3    # "cookie":I
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 288
    .end local v1    # "capacity":I
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v0    # "assetStream":Ljava/io/InputStream;
    .restart local p0    # "am":Landroid/content/res/AssetManager;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "isAsset":Z
    .restart local p3    # "cookie":I
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1
.end method

.method private static native blacklist nAddAxis(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J
.end method

.method private static native blacklist nClone(JJIZI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseNativeFont()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/fonts/Font;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    if-nez v1, :cond_9

    .line 450
    iget v1, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v1, v3, :cond_3

    .line 451
    :cond_0
    iget-object v1, v0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    iget v4, v0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    iget-object v5, v0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v1, v4, v5}, Landroid/graphics/fonts/FontFileUtil;->analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I

    move-result v1

    .line 452
    .local v1, "packed":I
    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->isSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 453
    iget v4, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    if-ne v4, v3, :cond_1

    .line 454
    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackWeight(I)I

    move-result v4

    iput v4, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 456
    :cond_1
    iget v4, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v4, v3, :cond_3

    .line 457
    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackItalic(I)Z

    move-result v3

    iput v3, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    goto :goto_0

    .line 460
    :cond_2
    const/16 v3, 0x190

    iput v3, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 461
    iput v2, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 464
    .end local v1    # "packed":I
    :cond_3
    :goto_0
    const/16 v1, 0x3e8

    iget v3, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 465
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 464
    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 466
    iget v1, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v1, v3, :cond_4

    move v10, v3

    goto :goto_1

    :cond_4
    move v10, v2

    .line 467
    .local v10, "italic":Z
    :goto_1
    if-ne v1, v3, :cond_5

    .line 468
    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    move v1, v3

    .line 469
    .local v1, "slant":I
    invoke-static {}, Landroid/graphics/fonts/Font$Builder;->nInitBuilder()J

    move-result-wide v13

    .line 470
    .local v13, "builderPtr":J
    iget-object v3, v0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v3, :cond_6

    .line 471
    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 472
    .local v5, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v13, v14, v6, v7}, Landroid/graphics/fonts/Font$Builder;->nAddAxis(JIF)V

    .line 471
    .end local v5    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 475
    :cond_6
    iget-object v2, v0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 476
    .local v2, "readonlyBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, v0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    if-nez v3, :cond_7

    const-string v3, ""

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v7, v3

    .line 480
    .local v7, "filePath":Ljava/lang/String;
    iget-object v3, v0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    if-nez v3, :cond_8

    .line 481
    iget-object v8, v0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    iget v9, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v11, v0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    move-wide v4, v13

    move-object v6, v2

    invoke-static/range {v4 .. v11}, Landroid/graphics/fonts/Font$Builder;->nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J

    move-result-wide v3

    .line 483
    .local v3, "ptr":J
    new-instance v5, Landroid/graphics/fonts/Font;

    invoke-direct {v5, v3, v4}, Landroid/graphics/fonts/Font;-><init>(J)V

    move-wide v8, v3

    move-object v3, v5

    move-wide v4, v13

    .local v5, "font":Landroid/graphics/fonts/Font;
    goto :goto_5

    .line 485
    .end local v3    # "ptr":J
    .end local v5    # "font":Landroid/graphics/fonts/Font;
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v11

    iget v15, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v3, v0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    move-wide v4, v13

    .end local v13    # "builderPtr":J
    .local v4, "builderPtr":J
    move/from16 v16, v10

    move/from16 v17, v3

    invoke-static/range {v11 .. v17}, Landroid/graphics/fonts/Font$Builder;->nClone(JJIZI)J

    move-result-wide v8

    .line 486
    .local v8, "ptr":J
    new-instance v3, Landroid/graphics/fonts/Font;

    invoke-direct {v3, v8, v9}, Landroid/graphics/fonts/Font;-><init>(J)V

    .line 488
    .local v3, "font":Landroid/graphics/fonts/Font;
    :goto_5
    return-object v3

    .line 448
    .end local v1    # "slant":I
    .end local v2    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "font":Landroid/graphics/fonts/Font;
    .end local v4    # "builderPtr":J
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "ptr":J
    .end local v10    # "italic":Z
    :cond_9
    new-instance v1, Ljava/io/IOException;

    iget-object v2, v0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    const-string v3, "Failed to read font contents"

    invoke-direct {v1, v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;
    .locals 1
    .param p1, "variationSettings"    # Ljava/lang/String;

    .line 427
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 428
    return-object p0
.end method

.method public whitelist setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;
    .locals 1
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 438
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Landroid/graphics/fonts/FontVariationAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontVariationAxis;

    :goto_0
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 439
    return-object p0
.end method

.method public whitelist setSlant(I)Landroid/graphics/fonts/Font$Builder;
    .locals 1
    .param p1, "slant"    # I

    .line 402
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 403
    return-object p0
.end method

.method public whitelist setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;
    .locals 0
    .param p1, "ttcIndex"    # I

    .line 414
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 415
    return-object p0
.end method

.method public whitelist setWeight(I)Landroid/graphics/fonts/Font$Builder;
    .locals 2
    .param p1, "weight"    # I

    .line 384
    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 386
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 387
    return-object p0
.end method
