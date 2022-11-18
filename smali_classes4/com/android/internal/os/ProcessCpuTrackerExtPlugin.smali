.class public Lcom/android/internal/os/ProcessCpuTrackerExtPlugin;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist constructor:Lcom/oplus/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Ljava/util/ArrayList;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefConstructor<",
            "Lcom/android/internal/os/IProcessCpuTrackerExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/android/internal/os/ProcessCpuTrackerExtPlugin;

    const-string v1, "com.android.internal.os.ProcessCpuTrackerExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTrackerExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
