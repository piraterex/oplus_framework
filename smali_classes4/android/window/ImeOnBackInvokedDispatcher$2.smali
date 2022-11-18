.class Landroid/window/ImeOnBackInvokedDispatcher$2;
.super Ljava/lang/Object;
.source "ImeOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/ImeOnBackInvokedDispatcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/ImeOnBackInvokedDispatcher;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-direct {v0, p1}, Landroid/window/ImeOnBackInvokedDispatcher;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$2;->createFromParcel(Landroid/os/Parcel;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/ImeOnBackInvokedDispatcher;
    .locals 1
    .param p1, "size"    # I

    .line 117
    new-array v0, p1, [Landroid/window/ImeOnBackInvokedDispatcher;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$2;->newArray(I)[Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object p1

    return-object p1
.end method
