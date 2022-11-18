.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final blacklist horizontalGravity:I

.field final blacklist id:I

.field final blacklist insetsType:I

.field final blacklist seascapeGravity:I

.field final blacklist transitionName:Ljava/lang/String;

.field final blacklist translucentFlag:I

.field final blacklist verticalGravity:I


# direct methods
.method private constructor blacklist <init>(IIIILjava/lang/String;II)V
    .locals 0
    .param p1, "translucentFlag"    # I
    .param p2, "verticalGravity"    # I
    .param p3, "horizontalGravity"    # I
    .param p4, "seascapeGravity"    # I
    .param p5, "transitionName"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "insetsType"    # I

    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2845
    iput p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    .line 2846
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    .line 2847
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 2848
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    .line 2849
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    .line 2850
    iput-object p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    .line 2851
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 2852
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public blacklist isPresent(ZIZ)Z
    .locals 1
    .param p1, "requestedVisible"    # Z
    .param p2, "windowFlags"    # I
    .param p3, "force"    # Z

    .line 2855
    if-eqz p1, :cond_1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isVisible(Landroid/view/InsetsState;IIZ)Z
    .locals 2
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .line 2866
    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v0

    .line 2868
    .local v0, "present":Z
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v1

    return v1
.end method

.method public blacklist isVisible(ZIIZ)Z
    .locals 1
    .param p1, "present"    # Z
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .line 2860
    if-eqz p1, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
