.class final Landroid/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final greylist-max-o UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .line 522
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$H-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmLastProgress(Landroid/preference/SeekBarVolumizer;I)V

    .line 530
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;I)V

    .line 531
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 532
    .local v0, "muted":Z
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmMuted(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 533
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1, v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmMuted(Landroid/preference/SeekBarVolumizer;Z)V

    .line 534
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmCallback(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmCallback(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmMuted(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misZenMuted(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 538
    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 541
    .end local v0    # "muted":Z
    :cond_1
    return-void
.end method

.method public greylist-max-o postUpdateSlider(IIZ)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "lastAudibleVolume"    # I
    .param p3, "mute"    # Z

    .line 544
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/preference/SeekBarVolumizer$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 545
    return-void
.end method
