.class final Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AssociationDumpContainer"
.end annotation


# instance fields
.field blacklist mActiveTime:J

.field blacklist mSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mState:Lcom/android/internal/app/procstats/AssociationState;

.field blacklist mTotalTime:J

.field final synthetic blacklist this$0:Lcom/android/internal/app/procstats/ProcessStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "state"    # Lcom/android/internal/app/procstats/AssociationState;

    .line 1567
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->this$0:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1568
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    .line 1569
    return-void
.end method
