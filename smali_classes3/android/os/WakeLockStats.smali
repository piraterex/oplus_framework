.class public final Landroid/os/WakeLockStats;
.super Ljava/lang/Object;
.source "WakeLockStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WakeLockStats$WakeLock;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WakeLockStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Landroid/os/WakeLockStats$1;

    invoke-direct {v0}, Landroid/os/WakeLockStats$1;-><init>()V

    sput-object v0, Landroid/os/WakeLockStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    iget-object v2, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    new-instance v3, Landroid/os/WakeLockStats$WakeLock;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats$WakeLock-IA;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "wakeLocks":Ljava/util/List;, "Ljava/util/List<Landroid/os/WakeLockStats$WakeLock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWakeLocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLockStats "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 105
    iget-object v2, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WakeLockStats$WakeLock;

    .line 106
    .local v2, "stats":Landroid/os/WakeLockStats$WakeLock;
    invoke-static {v2, p1}, Landroid/os/WakeLockStats$WakeLock;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V

    .line 104
    .end local v2    # "stats":Landroid/os/WakeLockStats$WakeLock;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
