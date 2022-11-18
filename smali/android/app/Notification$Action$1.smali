.class Landroid/app/Notification$Action$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/Notification$Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification$Action;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2191
    new-instance v0, Landroid/app/Notification$Action;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Action;-><init>(Landroid/os/Parcel;Landroid/app/Notification$Action-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2189
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification$Action;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/Notification$Action;
    .locals 1
    .param p1, "size"    # I

    .line 2194
    new-array v0, p1, [Landroid/app/Notification$Action;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2189
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$1;->newArray(I)[Landroid/app/Notification$Action;

    move-result-object p1

    return-object p1
.end method
