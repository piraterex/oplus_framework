.class Landroid/content/pm/InstantAppInfo$1;
.super Ljava/lang/Object;
.source "InstantAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/InstantAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/InstantAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppInfo;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 143
    new-instance v0, Landroid/content/pm/InstantAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/InstantAppInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/InstantAppInfo;
    .locals 1
    .param p1, "size"    # I

    .line 148
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/InstantAppInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppInfo$1;->newArray(I)[Landroid/content/pm/InstantAppInfo;

    move-result-object p1

    return-object p1
.end method
