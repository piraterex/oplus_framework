.class Landroid/content/ContentCaptureOptions$1;
.super Ljava/lang/Object;
.source "ContentCaptureOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentCaptureOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/ContentCaptureOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions;
    .locals 16
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 221
    .local v0, "lite":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 222
    .local v8, "loggingLevel":I
    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Landroid/content/ContentCaptureOptions;

    invoke-direct {v1, v8}, Landroid/content/ContentCaptureOptions;-><init>(I)V

    return-object v1

    .line 225
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 226
    .local v9, "maxBufferSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 227
    .local v10, "idleFlushingFrequencyMs":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 228
    .local v11, "textChangeFlushingFrequencyMs":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 230
    .local v12, "logHistorySize":I
    const/4 v1, 0x0

    .line 231
    move-object/from16 v13, p1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v14

    .line 232
    .local v14, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v15, Landroid/content/ContentCaptureOptions;

    move-object v1, v15

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/content/ContentCaptureOptions;-><init>(IIIIILandroid/util/ArraySet;)V

    return-object v15
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Landroid/content/ContentCaptureOptions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/ContentCaptureOptions;
    .locals 1
    .param p1, "size"    # I

    .line 239
    new-array v0, p1, [Landroid/content/ContentCaptureOptions;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Landroid/content/ContentCaptureOptions$1;->newArray(I)[Landroid/content/ContentCaptureOptions;

    move-result-object p1

    return-object p1
.end method
