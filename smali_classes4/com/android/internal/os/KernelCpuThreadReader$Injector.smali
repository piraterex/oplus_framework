.class public Lcom/android/internal/os/KernelCpuThreadReader$Injector;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getUidForPid(I)I
    .locals 1
    .param p1, "pid"    # I

    .line 567
    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    return v0
.end method
