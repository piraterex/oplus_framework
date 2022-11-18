.class public final Landroid/util/quota/CountQuotaTrackerProto$UptcStats;
.super Ljava/lang/Object;
.source "CountQuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/quota/CountQuotaTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UptcStats"
.end annotation


# static fields
.field public static final blacklist EVENTS:J = 0x20b00000003L

.field public static final blacklist EXECUTION_STATS:J = 0x20b00000004L

.field public static final blacklist IS_QUOTA_FREE:J = 0x10800000002L

.field public static final blacklist UPTC:J = 0x10b00000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/util/quota/CountQuotaTrackerProto;


# direct methods
.method public constructor blacklist <init>(Landroid/util/quota/CountQuotaTrackerProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/quota/CountQuotaTrackerProto;

    .line 53
    iput-object p1, p0, Landroid/util/quota/CountQuotaTrackerProto$UptcStats;->this$0:Landroid/util/quota/CountQuotaTrackerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
