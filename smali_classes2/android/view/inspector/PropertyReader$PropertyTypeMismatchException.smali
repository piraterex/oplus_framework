.class public Landroid/view/inspector/PropertyReader$PropertyTypeMismatchException;
.super Ljava/lang/RuntimeException;
.source "PropertyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/PropertyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyTypeMismatchException"
.end annotation


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "expectedPropertyType"    # Ljava/lang/String;
    .param p3, "actualPropertyType"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroid/view/inspector/PropertyReader$PropertyTypeMismatchException;->formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "expectedPropertyType"    # Ljava/lang/String;
    .param p3, "actualPropertyType"    # Ljava/lang/String;
    .param p4, "propertyName"    # Ljava/lang/String;

    .line 199
    invoke-static {p1, p2, p3, p4}, Landroid/view/inspector/PropertyReader$PropertyTypeMismatchException;->formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private static blacklist formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # I
    .param p1, "expectedPropertyType"    # Ljava/lang/String;
    .param p2, "actualPropertyType"    # Ljava/lang/String;
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    .line 219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 216
    const-string v1, "Attempted to read property with ID 0x%08X as type %s, but the ID is of type %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    .line 224
    const-string v0, "Attempted to read property \"%s\" with ID 0x%08X as type %s, but the ID is of type %s."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
