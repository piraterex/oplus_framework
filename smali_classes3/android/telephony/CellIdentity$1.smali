.class Landroid/telephony/CellIdentity$1;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellIdentity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad Cell identity Parcel"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :pswitch_0
    invoke-static {p1}, Landroid/telephony/CellIdentityNr;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;

    move-result-object v1

    return-object v1

    .line 300
    :pswitch_1
    invoke-static {p1}, Landroid/telephony/CellIdentityTdscdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v1

    return-object v1

    .line 296
    :pswitch_2
    invoke-static {p1}, Landroid/telephony/CellIdentityWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    return-object v1

    .line 298
    :pswitch_3
    invoke-static {p1}, Landroid/telephony/CellIdentityLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;

    move-result-object v1

    return-object v1

    .line 297
    :pswitch_4
    invoke-static {p1}, Landroid/telephony/CellIdentityCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    return-object v1

    .line 295
    :pswitch_5
    invoke-static {p1}, Landroid/telephony/CellIdentityGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;

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

    .line 290
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CellIdentity;
    .locals 1
    .param p1, "size"    # I

    .line 308
    new-array v0, p1, [Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->newArray(I)[Landroid/telephony/CellIdentity;

    move-result-object p1

    return-object p1
.end method
