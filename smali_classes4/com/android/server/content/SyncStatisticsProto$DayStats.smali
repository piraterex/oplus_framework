.class public final Lcom/android/server/content/SyncStatisticsProto$DayStats;
.super Ljava/lang/Object;
.source "SyncStatisticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStatisticsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DayStats"
.end annotation


# static fields
.field public static final blacklist DAY:J = 0x10500000001L

.field public static final blacklist FAILURE_COUNT:J = 0x10500000004L

.field public static final blacklist FAILURE_TIME:J = 0x10300000005L

.field public static final blacklist SUCCESS_COUNT:J = 0x10500000002L

.field public static final blacklist SUCCESS_TIME:J = 0x10300000003L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/content/SyncStatisticsProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/content/SyncStatisticsProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncStatisticsProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/content/SyncStatisticsProto$DayStats;->this$0:Lcom/android/server/content/SyncStatisticsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
