.class Lcom/android/internal/os/LongArrayMultiStateCounter$1;
.super Ljava/lang/Object;
.source "LongArrayMultiStateCounter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongArrayMultiStateCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/LongArrayMultiStateCounter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/LongArrayMultiStateCounter;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 252
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(Landroid/os/Parcel;Lcom/android/internal/os/LongArrayMultiStateCounter-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/os/LongArrayMultiStateCounter;
    .locals 1
    .param p1, "size"    # I

    .line 257
    new-array v0, p1, [Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$1;->newArray(I)[Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object p1

    return-object p1
.end method
