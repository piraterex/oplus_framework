.class final Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoricalBuffer"
.end annotation


# instance fields
.field final blacklist mData:[B

.field final blacklist mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

.field final synthetic blacklist this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .locals 4
    .param p2, "active"    # Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    .line 559
    iget-object v1, p2, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    .line 561
    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->readBytes([BI)V

    .line 562
    return-void
.end method
