.class Landroid/telephony/SubscriptionPlan$1;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SubscriptionPlan;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionPlan;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 168
    new-instance v0, Landroid/telephony/SubscriptionPlan;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/os/Parcel;Landroid/telephony/SubscriptionPlan-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionPlan$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionPlan;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/SubscriptionPlan;
    .locals 1
    .param p1, "size"    # I

    .line 173
    new-array v0, p1, [Landroid/telephony/SubscriptionPlan;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionPlan$1;->newArray(I)[Landroid/telephony/SubscriptionPlan;

    move-result-object p1

    return-object p1
.end method
