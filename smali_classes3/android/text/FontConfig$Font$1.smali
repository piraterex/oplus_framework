.class Landroid/text/FontConfig$Font$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig$Font;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$Font;
    .locals 16
    .param p1, "source"    # Landroid/os/Parcel;

    .line 241
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "path":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, "originalPathStr":Ljava/lang/String;
    if-nez v8, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v2, v0

    .line 244
    .local v2, "originalPath":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "postScriptName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 246
    .local v10, "weight":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 247
    .local v11, "slant":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 248
    .local v12, "index":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v13

    .line 249
    .local v13, "varSettings":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v14

    .line 251
    .local v14, "fallback":Ljava/lang/String;
    new-instance v15, Landroid/text/FontConfig$Font;

    new-instance v4, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v4, v10, v11}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object v0, v15

    move-object v3, v9

    move v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 237
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$Font$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$Font;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig$Font;
    .locals 1
    .param p1, "size"    # I

    .line 257
    new-array v0, p1, [Landroid/text/FontConfig$Font;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 237
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$Font$1;->newArray(I)[Landroid/text/FontConfig$Font;

    move-result-object p1

    return-object p1
.end method
