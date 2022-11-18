.class Landroid/media/WebVttParser$1;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method constructor blacklist <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .line 694
    iput-object p1, p0, Landroid/media/WebVttParser$1;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    .line 696
    return-void
.end method
