.class final Landroid/graphics/GraphicsStatsService$BufferInfo;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferInfo"
.end annotation


# instance fields
.field blacklist mEndTime:J

.field final blacklist mPackageName:Ljava/lang/String;

.field blacklist mStartTime:J

.field final blacklist mVersionCode:J

.field final synthetic blacklist this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;Ljava/lang/String;JJ)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "startTime"    # J

    .line 486
    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    .line 488
    iput-wide p3, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    .line 489
    iput-wide p5, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    .line 490
    return-void
.end method
