.class public Landroid/content/om/OverlayManagerTransaction$Request;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/OverlayManagerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayManagerTransaction$Request$RequestType;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_FABRICATED_OVERLAY:Ljava/lang/String; = "fabricated_overlay"

.field public static final blacklist TYPE_REGISTER_FABRICATED:I = 0x2

.field public static final blacklist TYPE_SET_DISABLED:I = 0x1

.field public static final blacklist TYPE_SET_ENABLED:I = 0x0

.field public static final blacklist TYPE_UNREGISTER_FABRICATED:I = 0x3


# instance fields
.field public final blacklist extras:Landroid/os/Bundle;

.field public final blacklist overlay:Landroid/content/om/OverlayIdentifier;

.field public final blacklist type:I

.field public final blacklist userId:I


# direct methods
.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 124
    iput-object p2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 125
    iput p3, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    .line 126
    iput-object p4, p0, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 131
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 131
    const-string v2, "Request{type=0x%02x (%s), overlay=%s, userId=%d}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist typeToString()Ljava/lang/String;
    .locals 3

    .line 142
    iget v0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    packed-switch v0, :pswitch_data_0

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "TYPE_UNKNOWN (0x%02x)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_0
    const-string v0, "TYPE_UNREGISTER_FABRICATED"

    return-object v0

    .line 145
    :pswitch_1
    const-string v0, "TYPE_REGISTER_FABRICATED"

    return-object v0

    .line 144
    :pswitch_2
    const-string v0, "TYPE_SET_DISABLED"

    return-object v0

    .line 143
    :pswitch_3
    const-string v0, "TYPE_SET_ENABLED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
