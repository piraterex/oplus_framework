.class public Landroid/os/WakeLockStats$WakeLock;
.super Ljava/lang/Object;
.source "WakeLockStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WakeLockStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeLock"
.end annotation


# instance fields
.field public final blacklist name:Ljava/lang/String;

.field public final blacklist timeHeldMs:J

.field public final blacklist timesAcquired:I

.field public final blacklist totalTimeHeldMs:J

.field public final blacklist uid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLock;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;IJJ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timesAcquired"    # I
    .param p4, "totalTimeHeldMs"    # J
    .param p6, "timeHeldMs"    # J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    .line 46
    iput-object p2, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    .line 47
    iput p3, p0, Landroid/os/WakeLockStats$WakeLock;->timesAcquired:I

    .line 48
    iput-wide p4, p0, Landroid/os/WakeLockStats$WakeLock;->totalTimeHeldMs:J

    .line 49
    iput-wide p6, p0, Landroid/os/WakeLockStats$WakeLock;->timeHeldMs:J

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WakeLockStats$WakeLock;->timesAcquired:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/WakeLockStats$WakeLock;->totalTimeHeldMs:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/WakeLockStats$WakeLock;->timeHeldMs:J

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats$WakeLock-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 61
    iget v0, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Landroid/os/WakeLockStats$WakeLock;->timesAcquired:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLock;->totalTimeHeldMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLock;->timeHeldMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timesAcquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/WakeLockStats$WakeLock;->timesAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalTimeHeldMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WakeLockStats$WakeLock;->totalTimeHeldMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeHeldMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WakeLockStats$WakeLock;->timeHeldMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
