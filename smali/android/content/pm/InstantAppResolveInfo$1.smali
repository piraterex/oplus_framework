.class Landroid/content/pm/InstantAppResolveInfo$1;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/InstantAppResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/InstantAppResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppResolveInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 214
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppResolveInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/InstantAppResolveInfo;
    .locals 1
    .param p1, "size"    # I

    .line 218
    new-array v0, p1, [Landroid/content/pm/InstantAppResolveInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppResolveInfo$1;->newArray(I)[Landroid/content/pm/InstantAppResolveInfo;

    move-result-object p1

    return-object p1
.end method
