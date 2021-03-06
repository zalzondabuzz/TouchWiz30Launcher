.class Lcom/sec/android/app/twlauncher/AppMenu$Animate;
.super Ljava/lang/Object;
.source "AppMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animate"
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/Scroller;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppMenu;)V
    .locals 3
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mRect:Landroid/graphics/Rect;

    .line 405
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mScroller:Landroid/widget/Scroller;

    .line 406
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 426
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mScroller:Landroid/widget/Scroller;

    .line 427
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 429
    .local v0, more:Z
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 430
    .local v3, x:I
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 432
    .local v4, y:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mTargetView:Landroid/view/View;

    .line 433
    .local v2, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 436
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppMenu;->invalidate()V

    .line 438
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/AppMenu;->post(Ljava/lang/Runnable;)Z

    .line 444
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 442
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppMenu;->invalidate()V

    goto :goto_0
.end method

.method public start(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 7
    .parameter "target"
    .parameter "nextRect"
    .parameter "duration"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->stop()V

    .line 410
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mTargetView:Landroid/view/View;

    .line 411
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mRect:Landroid/graphics/Rect;

    .line 412
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mScroller:Landroid/widget/Scroller;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppMenu;->post(Ljava/lang/Runnable;)Z

    .line 415
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 419
    return-void
.end method
