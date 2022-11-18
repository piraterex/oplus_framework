.class public final Landroid/text/FontConfig$Alias;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alias"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mName:Ljava/lang/String;

.field private final blacklist mOriginal:Ljava/lang/String;

.field private final greylist-max-o mWeight:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 456
    new-instance v0, Landroid/text/FontConfig$Alias$1;

    invoke-direct {v0}, Landroid/text/FontConfig$Alias$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$Alias;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    .line 417
    iput-object p2, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    .line 418
    iput p3, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    .line 419
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 474
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 475
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/text/FontConfig$Alias;

    .line 477
    .local v2, "alias":Landroid/text/FontConfig$Alias;
    iget v3, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    iget v4, v2, Landroid/text/FontConfig$Alias;->mWeight:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    .line 478
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    iget-object v4, v2, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    .line 479
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 477
    :goto_0
    return v0

    .line 475
    .end local v2    # "alias":Landroid/text/FontConfig$Alias;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOriginal()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWeight()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 484
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alias{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOriginal=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 451
    iget-object v0, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    return-void
.end method
