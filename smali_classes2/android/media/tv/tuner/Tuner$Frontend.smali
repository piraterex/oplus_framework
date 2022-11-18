.class Landroid/media/tv/tuner/Tuner$Frontend;
.super Ljava/lang/Object;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frontend"
.end annotation


# instance fields
.field private blacklist mId:I

.field final synthetic blacklist this$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/Tuner$Frontend;->mId:I

    return p0
.end method

.method private constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0
    .param p2, "id"    # I

    .line 1090
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$Frontend;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput p2, p0, Landroid/media/tv/tuner/Tuner$Frontend;->mId:I

    .line 1092
    return-void
.end method
