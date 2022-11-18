.class public final Landroid/hardware/radio/ProgramList$Chunk;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chunk"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mComplete:Z

.field private final greylist-max-o mModified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPurge:Z

.field private final greylist-max-o mRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 442
    new-instance v0, Landroid/hardware/radio/ProgramList$Chunk$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Chunk$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 425
    sget-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 426
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 427
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList$Chunk-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(ZZLjava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "purge"    # Z
    .param p2, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;)V"
        }
    .end annotation

    .line 415
    .local p3, "modified":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .local p4, "removed":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-boolean p1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 417
    iput-boolean p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 418
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 419
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 420
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 470
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 471
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 472
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/ProgramList$Chunk;

    .line 474
    .local v1, "other":Landroid/hardware/radio/ProgramList$Chunk;
    iget-boolean v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    iget-boolean v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    if-eq v3, v4, :cond_2

    return v2

    .line 475
    :cond_2
    iget-boolean v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    iget-boolean v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 476
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    iget-object v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 477
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    iget-object v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 478
    :cond_5
    return v0
.end method

.method public greylist-max-o getModified()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o getRemoved()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o isComplete()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    return v0
.end method

.method public greylist-max-o isPurge()Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunk [mPurge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 431
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 432
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 433
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 434
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 435
    return-void
.end method
