.class Landroid/service/controls/Control$1;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/controls/Control;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/Control;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 398
    new-instance v0, Landroid/service/controls/Control;

    invoke-direct {v0, p1}, Landroid/service/controls/Control;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Landroid/service/controls/Control$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/Control;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/controls/Control;
    .locals 1
    .param p1, "size"    # I

    .line 403
    new-array v0, p1, [Landroid/service/controls/Control;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Landroid/service/controls/Control$1;->newArray(I)[Landroid/service/controls/Control;

    move-result-object p1

    return-object p1
.end method
