.class Landroid/telephony/CellInfo$1;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad CellInfo Parcel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :pswitch_0
    invoke-static {p1}, Landroid/telephony/CellInfoNr;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoNr;

    move-result-object v1

    return-object v1

    .line 319
    :pswitch_1
    invoke-static {p1}, Landroid/telephony/CellInfoTdscdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoTdscdma;

    move-result-object v1

    return-object v1

    .line 318
    :pswitch_2
    invoke-static {p1}, Landroid/telephony/CellInfoWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;

    move-result-object v1

    return-object v1

    .line 317
    :pswitch_3
    invoke-static {p1}, Landroid/telephony/CellInfoLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;

    move-result-object v1

    return-object v1

    .line 316
    :pswitch_4
    invoke-static {p1}, Landroid/telephony/CellInfoCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;

    move-result-object v1

    return-object v1

    .line 315
    :pswitch_5
    invoke-static {p1}, Landroid/telephony/CellInfoGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CellInfo;
    .locals 1
    .param p1, "size"    # I

    .line 327
    new-array v0, p1, [Landroid/telephony/CellInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->newArray(I)[Landroid/telephony/CellInfo;

    move-result-object p1

    return-object p1
.end method
