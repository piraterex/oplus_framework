.class public Landroid/os/IncidentManager$DumpCallback;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpCallback"
.end annotation


# instance fields
.field blacklist mBinder:Landroid/os/IIncidentDumpCallback$Stub;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/os/IncidentManager$DumpCallback;)I
    .locals 0

    iget p0, p0, Landroid/os/IncidentManager$DumpCallback;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/os/IncidentManager$DumpCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmId(Landroid/os/IncidentManager$DumpCallback;I)V
    .locals 0

    iput p1, p0, Landroid/os/IncidentManager$DumpCallback;->mId:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Landroid/os/IncidentManager$DumpCallback$1;

    invoke-direct {v0, p0}, Landroid/os/IncidentManager$DumpCallback$1;-><init>(Landroid/os/IncidentManager$DumpCallback;)V

    iput-object v0, p0, Landroid/os/IncidentManager$DumpCallback;->mBinder:Landroid/os/IIncidentDumpCallback$Stub;

    return-void
.end method


# virtual methods
.method public whitelist onDumpSection(ILjava/io/OutputStream;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 455
    return-void
.end method
