.class Landroid/view/autofill/AutofillId$1;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/autofill/AutofillId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillId;
    .locals 15
    .param p1, "source"    # Landroid/os/Parcel;

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 251
    .local v13, "viewId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 252
    .local v14, "flags":I
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 253
    .local v5, "sessionId":I
    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_1

    .line 254
    new-instance v7, Landroid/view/autofill/AutofillId;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v3, v0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v14

    move v2, v13

    invoke-direct/range {v0 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v7

    .line 256
    :cond_1
    and-int/lit8 v0, v14, 0x2

    if-eqz v0, :cond_2

    .line 257
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    const/4 v12, 0x0

    move-object v6, v0

    move v7, v14

    move v8, v13

    move v11, v5

    invoke-direct/range {v6 .. v12}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v0

    .line 259
    :cond_2
    new-instance v0, Landroid/view/autofill/AutofillId;

    const-wide/16 v9, -0x1

    const/4 v12, 0x0

    move-object v6, v0

    move v7, v14

    move v8, v13

    move v11, v5

    invoke-direct/range {v6 .. v12}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/autofill/AutofillId;
    .locals 1
    .param p1, "size"    # I

    .line 264
    new-array v0, p1, [Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId$1;->newArray(I)[Landroid/view/autofill/AutofillId;

    move-result-object p1

    return-object p1
.end method
