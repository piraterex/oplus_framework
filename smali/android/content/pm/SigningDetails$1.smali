.class Landroid/content/pm/SigningDetails$1;
.super Ljava/lang/Object;
.source "SigningDetails.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/SigningDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SigningDetails;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object v0

    .line 839
    :cond_0
    new-instance v0, Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SigningDetails;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/SigningDetails;
    .locals 1
    .param p1, "size"    # I

    .line 844
    new-array v0, p1, [Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails$1;->newArray(I)[Landroid/content/pm/SigningDetails;

    move-result-object p1

    return-object p1
.end method
