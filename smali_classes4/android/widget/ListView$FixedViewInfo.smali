.class public Landroid/widget/ListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public whitelist data:Ljava/lang/Object;

.field public whitelist isSelectable:Z

.field final synthetic blacklist this$0:Landroid/widget/ListView;

.field public whitelist view:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListView;

    .line 174
    iput-object p1, p0, Landroid/widget/ListView$FixedViewInfo;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
