.class public final Landroid/hardware/display/DisplayedContentSample;
.super Ljava/lang/Object;
.source "DisplayedContentSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    }
.end annotation


# instance fields
.field private blacklist mNumFrames:J

.field private blacklist mSamplesComponent0:[J

.field private blacklist mSamplesComponent1:[J

.field private blacklist mSamplesComponent2:[J

.field private blacklist mSamplesComponent3:[J


# direct methods
.method public constructor blacklist <init>(J[J[J[J[J)V
    .locals 0
    .param p1, "numFrames"    # J
    .param p3, "sampleComponent0"    # [J
    .param p4, "sampleComponent1"    # [J
    .param p5, "sampleComponent2"    # [J
    .param p6, "sampleComponent3"    # [J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    .line 54
    iput-object p3, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    .line 55
    iput-object p4, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    .line 56
    iput-object p5, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    .line 57
    iput-object p6, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist getNumFrames()J
    .locals 2

    .line 94
    iget-wide v0, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    return-wide v0
.end method

.method public blacklist getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J
    .locals 2
    .param p1, "component"    # Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 79
    sget-object v0, Landroid/hardware/display/DisplayedContentSample$1;->$SwitchMap$android$hardware$display$DisplayedContentSample$ColorComponent:[I

    invoke-virtual {p1}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-object v0

    .line 82
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    return-object v0

    .line 81
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    return-object v0

    .line 80
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
