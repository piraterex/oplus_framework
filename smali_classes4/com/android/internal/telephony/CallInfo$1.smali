.class Lcom/android/internal/telephony/CallInfo$1;
.super Ljava/lang/Object;
.source "CallInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/CallInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CallInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/CallInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CallInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/CallInfo;
    .locals 1
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Lcom/android/internal/telephony/CallInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallInfo$1;->newArray(I)[Lcom/android/internal/telephony/CallInfo;

    move-result-object p1

    return-object p1
.end method
