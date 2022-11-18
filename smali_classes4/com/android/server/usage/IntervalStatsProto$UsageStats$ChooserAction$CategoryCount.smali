.class public final Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction$CategoryCount;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoryCount"
.end annotation


# static fields
.field public static final blacklist COUNT:J = 0x10500000003L

.field public static final blacklist NAME:J = 0x10900000001L


# instance fields
.field final synthetic blacklist this$2:Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;

    .line 39
    iput-object p1, p0, Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction$CategoryCount;->this$2:Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
