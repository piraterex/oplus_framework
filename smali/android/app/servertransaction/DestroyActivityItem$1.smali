.class Landroid/app/servertransaction/DestroyActivityItem$1;
.super Ljava/lang/Object;
.source "DestroyActivityItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/DestroyActivityItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/servertransaction/DestroyActivityItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/DestroyActivityItem;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    new-instance v0, Landroid/app/servertransaction/DestroyActivityItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/servertransaction/DestroyActivityItem;-><init>(Landroid/os/Parcel;Landroid/app/servertransaction/DestroyActivityItem-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/DestroyActivityItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/servertransaction/DestroyActivityItem;
    .locals 1
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Landroid/app/servertransaction/DestroyActivityItem;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/DestroyActivityItem$1;->newArray(I)[Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object p1

    return-object p1
.end method
