.class Landroid/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/RadioGroup;)V
    .locals 0

    .line 372
    iput-object p1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$CheckedStateTracker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 376
    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0}, Landroid/widget/RadioGroup;->-$$Nest$fgetmProtectFromCheckedChange(Landroid/widget/RadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/RadioGroup;->-$$Nest$fputmProtectFromCheckedChange(Landroid/widget/RadioGroup;Z)V

    .line 381
    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0}, Landroid/widget/RadioGroup;->-$$Nest$fgetmCheckedId(Landroid/widget/RadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0}, Landroid/widget/RadioGroup;->-$$Nest$fgetmCheckedId(Landroid/widget/RadioGroup;)I

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/widget/RadioGroup;->-$$Nest$msetCheckedStateForView(Landroid/widget/RadioGroup;IZ)V

    .line 384
    :cond_1
    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0, v2}, Landroid/widget/RadioGroup;->-$$Nest$fputmProtectFromCheckedChange(Landroid/widget/RadioGroup;Z)V

    .line 386
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 387
    .local v0, "id":I
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v1, v0}, Landroid/widget/RadioGroup;->-$$Nest$msetCheckedId(Landroid/widget/RadioGroup;I)V

    .line 388
    return-void
.end method
