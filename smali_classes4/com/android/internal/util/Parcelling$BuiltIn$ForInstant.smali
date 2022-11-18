.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;
.super Ljava/lang/Object;
.source "Parcelling.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/Parcelling$BuiltIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForInstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/time/Instant;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 318
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;->parcel(Ljava/time/Instant;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/time/Instant;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "item"    # Ljava/time/Instant;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I

    .line 322
    if-nez p1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    if-nez p1, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result v0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;->unparcel(Landroid/os/Parcel;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/time/Instant;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 329
    .local v0, "epochSecond":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .local v2, "afterNano":I
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 332
    const/4 v3, 0x0

    return-object v3

    .line 334
    :cond_0
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v3

    return-object v3
.end method
