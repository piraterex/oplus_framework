.class Landroid/widget/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SlidingDrawer;)V
    .locals 0

    .line 965
    iput-object p1, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$DrawerToggler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 967
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-static {v0}, Landroid/widget/SlidingDrawer;->-$$Nest$fgetmLocked(Landroid/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-static {v0}, Landroid/widget/SlidingDrawer;->-$$Nest$fgetmAnimateOnClick(Landroid/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 977
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 979
    :goto_0
    return-void
.end method
