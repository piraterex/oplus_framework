.class Landroid/telephony/ims/RcsClientConfiguration$1;
.super Ljava/lang/Object;
.source "RcsClientConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsClientConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/RcsClientConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/RcsClientConfiguration;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "rcsVersion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "rcsProfile":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "clientVendor":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "clientVersion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 173
    .local v10, "rcsEnabledByUser":Ljava/lang/Boolean;
    new-instance v11, Landroid/telephony/ims/RcsClientConfiguration;

    .line 174
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, v11

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsClientConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    return-object v11
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Landroid/telephony/ims/RcsClientConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/RcsClientConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/ims/RcsClientConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 179
    new-array v0, p1, [Landroid/telephony/ims/RcsClientConfiguration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Landroid/telephony/ims/RcsClientConfiguration$1;->newArray(I)[Landroid/telephony/ims/RcsClientConfiguration;

    move-result-object p1

    return-object p1
.end method
