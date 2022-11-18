.class Landroid/filterfw/core/FilterFunction$FrameHolderPort;
.super Landroid/filterfw/core/StreamPort;
.source "FilterFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/FilterFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameHolderPort"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/filterfw/core/FilterFunction;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/core/FilterFunction;)V
    .locals 1

    .line 33
    iput-object p1, p0, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->this$0:Landroid/filterfw/core/FilterFunction;

    .line 34
    const/4 p1, 0x0

    const-string v0, "holder"

    invoke-direct {p0, p1, v0}, Landroid/filterfw/core/StreamPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 35
    return-void
.end method
