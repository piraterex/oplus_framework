.class Landroid/provider/ContactsContract$SimAccount$1;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$SimAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/ContactsContract$SimAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 8593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/ContactsContract$SimAccount;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 8596
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 8597
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8598
    .local v1, "accountType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8599
    .local v2, "simSlot":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 8600
    .local v3, "efType":I
    new-instance v4, Landroid/provider/ContactsContract$SimAccount;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/provider/ContactsContract$SimAccount;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 8602
    .local v4, "simAccount":Landroid/provider/ContactsContract$SimAccount;
    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 8593
    invoke-virtual {p0, p1}, Landroid/provider/ContactsContract$SimAccount$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/ContactsContract$SimAccount;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/ContactsContract$SimAccount;
    .locals 1
    .param p1, "size"    # I

    .line 8607
    new-array v0, p1, [Landroid/provider/ContactsContract$SimAccount;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 8593
    invoke-virtual {p0, p1}, Landroid/provider/ContactsContract$SimAccount$1;->newArray(I)[Landroid/provider/ContactsContract$SimAccount;

    move-result-object p1

    return-object p1
.end method
