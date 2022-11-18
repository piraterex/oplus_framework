.class Landroid/view/KeyEvent$1;
.super Ljava/lang/Object;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/KeyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 3171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 3175
    invoke-static {p1}, Landroid/view/KeyEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3171
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/KeyEvent;
    .locals 1
    .param p1, "size"    # I

    .line 3180
    new-array v0, p1, [Landroid/view/KeyEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3171
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent$1;->newArray(I)[Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1
.end method
